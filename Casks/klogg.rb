cask "klogg" do
  version "20.12.0.813"
  sha256 "a1814e017aed78d3a75071e5416563c10628035d949783537acd176b62783e1e"

  url "https://github.com/variar/klogg/releases/download/v#{version.major_minor}/klogg-#{version}-OSX.dmg"
  name "Klogg"
  desc "Fast, advanced log explorer"
  homepage "https://github.com/variar/klogg"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/klogg-(\d+(?:\.\d+)*)-OSX\.dmg}i)
  end

  app "klogg.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/klogg.wrapper.sh"
  binary shimscript, target: "klogg"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/klogg.app/Contents/MacOS/klogg' "$@"
    EOS
  end
end
