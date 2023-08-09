cask "pololu-avr-programmer-v2" do
  version "0J1120,1.1.0"
  sha256 "c4e1c5d6dcb451dc79f8c9350abdde8b8054d35e00cb7cbf34fc2c67953ce59d"

  url "https://www.pololu.com/file/#{version.csv.first}/pololu-usb-avr-programmer-v2-#{version.csv.second}-macos.pkg"
  name "Software for Pololu AVR Programmer v2"
  desc "Drivers for the Pololu AVR Programmer v2"
  homepage "https://www.pololu.com/docs/0J67/4.3"

  livecheck do
    url :homepage
    regex(%r{href=.*?/([a-zA-Z0-9]+)/pololu-usb-avr-programmer-v2-(\d+(\.\d+)*[a-z]?)-macos\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :el_capitan"

  pkg "pololu-usb-avr-programmer-v2-#{version.csv.second}-macos.pkg"

  uninstall pkgutil: [
    "com.pololu.pavr2.app",
    "com.pololu.pavr2.path",
  ]

  zap trash: "~/Library/Saved Application State/com.pololu.pavr2.app.savedState"
end
