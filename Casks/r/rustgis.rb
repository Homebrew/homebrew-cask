cask "rustgis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:          "f829a1562ea270eec219ea9276bfb7315701f0b94bc9d293c80092ec0dcb3f28",
         intel:        "604c8bf145f0b81495c771689ec207597b98ac1b3c5ba6cb8146ef4b6ca07094",
         arm64_linux:  "a5b886b9b68e47fab92b968898c5836fcf40949651cf7f1ed712b94bdc4b63e7",
         x86_64_linux: "af428db511232a0da72046d5d5e561b3976a78c2bb87656ebdc60c390325fddc"

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
