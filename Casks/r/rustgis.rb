cask "rustgis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.7.0"
  sha256 arm:          "85db5f9ece186fd33ee34e303ff88a4e6f7cbfbbb730828debbfa39607828670",
         intel:        "569080033a7c8b78ec85bc98f047fd94bbbb0d2586a3fccbf7da0872a6fe57fb",
         arm64_linux:  "35d8b333aae78d608002c843a5a70a41309ec5b0016f608a69d178531ea95851",
         x86_64_linux: "d6d5e6398893640c393b9cbb3b7bad2d5e9109279c966df108c6cb95aa46d504"

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
