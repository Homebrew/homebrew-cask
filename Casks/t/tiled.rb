cask "tiled" do
  version "1.12.2"

  on_monterey :or_older do
    sha256 "7ccac675b6e71e7a87d558f5b3330040c59a091eafba9cff313261eb84eb8214"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-10.13-12.zip",
        verified: "github.com/mapeditor/tiled/"

    caveats do
      requires_rosetta
    end
  end
  on_ventura :or_newer do
    sha256 "75712ec3a892701a9b2b7a12e44d636a1dbbe4caa6bb8bba729e697bd8a80433"

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

  depends_on :macos

  app "Tiled.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "tiled.wrapper.sh",
                  target:  "tiled",
                  content: <<~EOS
                    #!/bin/bash
                    exec '#{appdir}/Tiled.app/Contents/MacOS/Tiled' "$@"
                  EOS

  zap trash: [
    "~/Library/Application Support/Tiled",
    "~/Library/Preferences/org.mapeditor.Tiled.plist",
    "~/Library/Preferences/Tiled",
  ]
end
