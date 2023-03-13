cask "adobe-connect" do
  version "11,2023.2.187"
  sha256 "a441e55321b4b86b2a00404aaa699991af73db2228f422d3cf20ba56d475e852"

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
