cask "excire-search" do
  arch arm: "arm64", intel: "x64"

  version "5.0.3"
  sha256 arm:   "b80e067e4326b65fe4f7982af08ec1732afe33cad29f9a52a99463abf588735d",
         intel: "8dedfe8754d722e89f43f1684e81bceadb7dd6f8e101a285b40393a302a3312e"

  url "https://www.excire.com/downloads/excire-search/ExcireSearch-#{version}-#{arch}.zip"
  name "Excire Search"
  desc "Lightroom Classic plugin with automatic keywording and advanced search"
  homepage "https://excire.com/en/excire-search/"

  livecheck do
    url "https://api.excire.com/v2/app_version?product=ExcireSearch2026&platform=darwin&arch=#{arch}&lang=0&current_version=#{version}&current_version_hash=00000000"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "Install.pkg"

  uninstall pkgutil: [
    "de.excire.search",
    "de.excire.search.lrplugin",
    "prc.excire.search.panel",
  ]

  zap trash: [
    "~/Library/Application Support/.excire-search",
    "~/Library/Application Support/excire-search-panel",
    "~/Library/Logs/excire-search",
  ]
end
