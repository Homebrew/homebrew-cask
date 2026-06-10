cask "excire-search" do
  arch arm: "arm64", intel: "x64"

  version "5.0.5"
  sha256 arm:   "60cfc1859b079c62d58ea9f9fbbc67158afbae6ec88ea025220f20ed7d2618d0",
         intel: "8e71371eb3389da3d7c0e7bc5e24c9e89fdb146d5d61e8d93cbef75da99c79f4"

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

  depends_on macos: :big_sur

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
