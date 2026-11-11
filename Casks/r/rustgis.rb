cask "rustgis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.0"
  sha256 arm:          "b419c124c3fe640c1fee106c360ec6c6d6860e0933ae6b2efef4b552aa101679",
         intel:        "b70366f493ecdc10aaf03a8166a3fb01a1da2fbbd915e6f6404ce335a4164ea6",
         arm64_linux:  "71dcd210dbeb557ec5cb9cbb02e671dc56100bf13ca7b78b7d6ad5b395dc890a",
         x86_64_linux: "2807952e2ddb7c0b21303ee64159876e36a2a158ea9ebe4cadcaad595fbea4e8"

  on_macos do
    url "https://github.com/opengeos/RustGIS/releases/download/v#{version}/RustGIS-#{version}-macos-#{arch}.dmg"

    app "RustGIS.app"

    zap trash: [
      "~/Library/Application Support/RustGIS",
      "~/Library/Caches/RustGIS",
      "~/Library/Saved Application State/org.rustgis.RustGIS.savedState",
    ]
  end
  on_linux do
    url "https://github.com/opengeos/RustGIS/releases/download/v#{version}/RustGIS-#{version}-linux-#{arch}.AppImage"

    app_image "RustGIS-#{version}-linux-#{arch}.AppImage", target: "RustGIS.AppImage"

    zap trash: [
      "~/.cache/rustgis",
      "~/.config/rustgis",
      "~/.local/share/rustgis",
    ]
  end

  name "RustGIS"
  desc "GIS platform"
  homepage "https://rustgis.app/"
end
