cask "bonitastudiocommunity" do
  version "2022.2-u0"
  sha256 "f66cad98211118ba795ff5097de90c3c2a88503f5002a3cfc079e734be10b51f"

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
