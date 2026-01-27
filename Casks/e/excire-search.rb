cask "excire-search" do
  arch arm: "arm64", intel: "x64"

  version "5.0.4"
  sha256 arm:   "21703048088548f1d9fb57ca08a6d687ba59d61ae75d826e5b6ddcd3f64b0058",
         intel: "89233c87b52d42470c53576504be0be184f564a2b784ca7039ec623697f1b4e8"

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
