cask "tiled" do
  version "1.12.2"

  on_monterey :or_older do
    sha256 "402739413e37ae6fe403a3e07ccabc8f922f86efdedea806c4b198ef96b00d8a"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-10.13-12.zip"

    caveats do
      requires_rosetta
    end
  end
  on_ventura :or_newer do
    sha256 "75712ec3a892701a9b2b7a12e44d636a1dbbe4caa6bb8bba729e697bd8a80433"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-13+.zip"
  end
  on_macos do
    app "Tiled.app"
    command_wrapper "tiled",
                    executable: "#{appdir}/Tiled.app/Contents/MacOS/Tiled"

    zap trash: [
      "~/Library/Application Support/Tiled",
      "~/Library/Preferences/org.mapeditor.Tiled.plist",
      "~/Library/Preferences/Tiled",
    ]
  end
  on_linux do
    sha256 "5e0edbff61314f41af3c72c21ec006b363cf12047cc9cfb5bbd63a98bca3721c"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_Linux_x86_64.AppImage"

    depends_on arch: :x86_64

    app_image "Tiled-#{version}_Linux_x86_64.AppImage", target: "Tiled.AppImage"

    zap trash: [
      "~/.config/mapeditor.org/tiled.conf",
      "~/.config/tiled",
      "~/.local/share/tiled",
    ]
  end

  name "Tiled"
  desc "Flexible level editor"
  homepage "https://www.mapeditor.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
