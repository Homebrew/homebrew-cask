cask "tiled" do
  version "1.12.0"

  on_monterey :or_older do
    sha256 "e64a5f1fcdfecdf3b615383174c54f392e84f368e84cfdd02274214858ad1e52"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-10.13-10.15.zip",
        verified: "github.com/mapeditor/tiled/"

    caveats do
      requires_rosetta
    end
  end
  on_ventura :or_newer do
    sha256 "071b80c7802a25af164e97dd9ed0742e0eae318ca4a12dbc8189bdb59e94f29f"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-11+.zip",
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
