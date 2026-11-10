cask "rustgis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.0"
  sha256 arm:   "b419c124c3fe640c1fee106c360ec6c6d6860e0933ae6b2efef4b552aa101679",
         intel: "b70366f493ecdc10aaf03a8166a3fb01a1da2fbbd915e6f6404ce335a4164ea6"

  url "https://github.com/opengeos/RustGIS/releases/download/v#{version}/RustGIS-#{version}-macos-#{arch}.dmg"
  name "RustGIS"
  desc "GIS platform"
  homepage "https://rustgis.app/"

  depends_on :macos

  app "RustGIS.app"

  zap trash: [
    "~/Library/Application Support/RustGIS",
    "~/Library/Caches/RustGIS",
    "~/Library/Saved Application State/org.rustgis.RustGIS.savedState",
  ]
end
