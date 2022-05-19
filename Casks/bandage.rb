cask "bandage" do
  arch = Hardware::CPU.intel? ? "x86-64" : "aarch64"

  version "0.9.0"

  if Hardware::CPU.intel?
    sha256 "26e775c638bc4da1eb3a1b6e835a3916f64d89cad04050f70ccc41f847488238"
  else
    sha256 "0bf30966957a5949bf40595ae05d56bb84e504ee8d25e346ccad631c4588e815"
  end

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_macOS-#{arch}_v#{version}.zip",
      verified: "github.com/rrwick/Bandage/"
  name "Bandage"
  desc "Bioinformatics app for navigating de novo assembly graphs"
  homepage "https://rrwick.github.io/Bandage/"

  app "Bandage.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/bandage.wrapper.sh"
  binary shimscript, target: "bandage"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Bandage.app/Contents/MacOS/Bandage' "$@"
    EOS
  end
end
