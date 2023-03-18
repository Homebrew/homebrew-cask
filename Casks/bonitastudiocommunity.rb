cask "bonitastudiocommunity" do
  version "2023.1-b1"
  sha256 "ceb1d94b714b0fc9ccf288f60f24203ba412c99f71e4830549c6ad0a604141e4"

  url "https://github.com/bonitasoft/bonita-platform-releases/releases/download/#{version}/BonitaStudioCommunity-#{version}-x86_64.dmg",
      verified: "github.com/bonitasoft/bonita-platform-releases/"
  name "Bonita Studio Community Edition"
  desc "Business process automation and optimization"
  homepage "https://www.bonitasoft.com/downloads"

  installer script: {
    executable: "#{staged_path}/BonitaStudioCommunity-#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
  }

  uninstall quit:   "org.bonitasoft.studio.product",
            delete: "/Applications/BonitaStudioCommunity-#{version}.app"

  zap trash: [
    "~/Library/Preferences/org.bonitasoft.studio.product.plist",
    "/Library/Caches/org.bonitasoft.studio.product",
  ]
end
