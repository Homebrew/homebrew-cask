cask "inkscape" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "1.2.1"

  if Hardware::CPU.intel?
    sha256 "8117d5d864358c9f626ce574d07d2f121ad96fc96a535cc3fddaba3c74bd3279"
  else
    sha256 "a8e9b49a3c9c92bc82a3914ef47290166c11c542712dd0ea63e3b9e017d5c450"
  end

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}_#{arch}.dmg"
  name "Inkscape"
  desc "Vector graphics editor"
  homepage "https://inkscape.org/"

  livecheck do
    url "https://inkscape.org/release"
    strategy :header_match
  end

  app "Inkscape.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/inkscape.wrapper.sh"
  binary shimscript, target: "inkscape"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/Inkscape.app/Contents/MacOS/inkscape' "$@"
    EOS
  end

  zap trash: [
    "~/.config/inkscape",
    "~/Library/Application Support/Inkscape",
    "~/Library/Application Support/org.inkscape.Inkscape",
    "~/Library/Caches/org.inkscape.Inkscape*",
    "~/Library/Preferences/org.inkscape.Inkscape.plist",
    "~/Library/Saved Application State/org.inkscape.Inkscape.savedState",
  ]
end
