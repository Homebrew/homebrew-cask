cask "adobe-connect" do
  version "11,2022.5.109"
  sha256 "48ed8ec4791cac72a2389c4c0baae2752885d8625f831be550e2e92df4591451"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.csv.first.dots_to_underscores}/AdobeConnect_#{version.csv.second.dots_to_underscores}.dmg"
  name "Adobe Connect"
  desc "Virtual meeting client"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  livecheck do
    url "https://www.adobe.com/go/ConnectMac11Plus"
    regex(%r{/(\d+(?:[._]\d+)*)/AdobeConnect[._-]?(\d+(?:[._]\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2].tr("_", ".")}"
    end
  end

  auto_updates true

  installer manual: "AdobeConnectInstaller.app"

  uninstall delete: "/Applications/Adobe Connect"
end
