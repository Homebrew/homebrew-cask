cask "adobe-connect" do
  version "11,2021.9.28"
  sha256 "b5e04c5c4d6bfd177f9a88eaea573ecab5b4cc2387da75a588cd90bd37f0c47c"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma.dots_to_underscores}/AdobeConnect_#{version.after_comma.dots_to_underscores}.dmg"
  name "Adobe Connect"
  desc "Virtual meeting client"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  livecheck do
    url "https://www.adobe.com/go/ConnectMac11Plus"
    regex(%r{/(\d+(?:[._]\d+)*)/AdobeConnect[._-]?(\d+(?:[._]\d+)*)\.dmg}i)
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
