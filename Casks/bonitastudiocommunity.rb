cask "bonitastudiocommunity" do
  version "2023.1-u0"
  sha256 "d1d62cca0adef3ce478061e1949983ccaa9ddc1974b869dd6081250e195327a9"

  url "https://github.com/bonitasoft/bonita-platform-releases/releases/download/#{version}/BonitaStudioCommunity-#{version}-x86_64.dmg",
      verified: "github.com/bonitasoft/bonita-platform-releases/"
  name "Bonita Studio Community Edition"
  desc "Business process automation and optimization"
  homepage "https://www.bonitasoft.com/downloads"

  livecheck do
    url :url
    regex(/(\d+(?:[.-]\d+)+(?:-\w+)?)/i)
    strategy :github_latest
  end

  installer script: {
    executable: "#{staged_path}/BonitaStudioCommunity-#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
  }

  uninstall quit:   "org.bonitasoft.studio.product",
            delete: "/Applications/BonitaStudioCommunity-#{version}.app"

  zap trash: [
    "/Library/Caches/org.bonitasoft.studio.product",
    "~/Library/Preferences/org.bonitasoft.studio.product.plist",
  ]
end
