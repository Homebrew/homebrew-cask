cask "bonitastudiocommunity" do
  version "7.11.3"
  sha256 "f2ce99981f34d82c22acf0b4adc99825c4225f719b75ea617dd4cde1d214e5b2"

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
