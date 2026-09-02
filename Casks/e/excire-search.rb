cask "excire-search" do
  arch arm: "arm64", intel: "x64"

  version "5.0.6"
  sha256 arm:   "e3b696f5be044a88568e254d5353981a3f79ab1777038da6bd0ca7070b0abd7c",
         intel: "54475f47a93dd04cfb45f0307087369e4fe1ae46ef650b01299d9dd383834c69"

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
