cask "inkscape" do
  version "1.1.0"
  sha256 "5f3308c00119ee9bc3732c7e9cbde208357b57e6d58f1edc08da9e10330c2d9d"

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}.dmg"
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
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/Inkscape.app/Contents/MacOS/inkscape' "$@"
    EOS
  end

  zap trash: [
    "~/.config/inkscape",
    "~/Library/Application Support/Inkscape",
    "~/Library/Application Support/org.inkscape.Inkscape",
    "~/Library/Preferences/org.inkscape.Inkscape.plist",
    "~/Library/Saved Application State/org.inkscape.Inkscape.savedState",
  ]
end
