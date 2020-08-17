cask "bonitastudiocommunity" do
  version "7.11.1"
  sha256 "898af74f05e7b9b297b15225c662e62f0d18fb35a661483f62f9dfe2f9dfbbcb"

  # github.com/bonitasoft/bonita-platform-releases was verified as official when first introduced to the cask
  url "https://github.com/bonitasoft/bonita-platform-releases/releases/download/#{version}/BonitaStudioCommunity-#{version}-x86_64.dmg"
  appcast "https://www.bonitasoft.com/downloads",
          must_contain: version.major_minor
  name "Bonita Studio Community Edition"
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
