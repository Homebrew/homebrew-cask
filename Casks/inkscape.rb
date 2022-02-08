cask "inkscape" do
  version "1.1.2"
  sha256 "5af2fcfa65c68c7688b862ba9c509199be21954f28ccfbb7d4004cf93d34f18a"

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
