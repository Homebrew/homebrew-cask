cask "gqrx" do
  version "2.15.8"
  sha256 "02542a606f6e3e6338d6dad44aeb5c450ce01bc5fa2f843e794ba2203886ff55"

  url "https://github.com/gqrx-sdr/gqrx/releases/download/v#{version.major_minor_patch}/Gqrx-#{version}.dmg",
      verified: "github.com/gqrx-sdr/gqrx/"
  name "Gqrx"
  desc "Software-defined radio receiver powered by GNU Radio and Qt"
  homepage "https://gqrx.dk/"

  depends_on macos: ">= :catalina"

  app "Gqrx.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gqrx.wrapper.sh"
  binary shimscript, target: "gqrx"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Gqrx.app/Contents/MacOS/gqrx' "$@"
    EOS
  end
end
