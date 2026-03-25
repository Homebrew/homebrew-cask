cask "tiled" do
  version "1.12.1"

  on_monterey :or_older do
    sha256 "7ccac675b6e71e7a87d558f5b3330040c59a091eafba9cff313261eb84eb8214"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-10.13-12.zip",
        verified: "github.com/mapeditor/tiled/"

    caveats do
      requires_rosetta
    end
  end
  on_ventura :or_newer do
    sha256 "bc6b4958d4fa8701137ff9c61327f53b708f2b8b2feb8db51c925b8908eb1298"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-13+.zip",
        verified: "github.com/mapeditor/tiled/"
  end

  name "Tiled"
  desc "Flexible level editor"
  homepage "https://www.mapeditor.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tiled.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/tiled.wrapper.sh"
  binary shimscript, target: "tiled"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/Tiled.app/Contents/MacOS/Tiled' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Tiled",
    "~/Library/Preferences/org.mapeditor.Tiled.plist",
    "~/Library/Preferences/Tiled",
  ]
end
