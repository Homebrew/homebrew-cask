cask "opencpn" do
  version "5.12.4,-universal+15189.37fd0cddb-14"
  sha256 "9c28432fe4abaff0542bc24969e19ab363de59afd9bb72c8354787931f87d8e8"

  url "https://github.com/OpenCPN/OpenCPN/releases/download/Release_#{version.csv.first}/OpenCPN_#{version.csv.first}#{version.csv.second}.pkg",
      verified: "github.com/OpenCPN/OpenCPN/"
  name "OpenCPN"
  desc "Full-featured and concise ChartPlotter/Navigator"
  homepage "https://www.opencpn.org/"

  livecheck do
    url "https://www.opencpn.org/OpenCPN/info/downloadopencpn.html"
    regex(/href=.*?OpenCPN[._-]?v?(\d+(?:\.+\d+)+)((?:-\d+)?(?:-universal)?\+\d+\.\h+(?:-\d+)?)?\.(?:dmg|pkg)/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  pkg "OpenCPN_#{version.csv.first}#{version.csv.second}.pkg"

  uninstall pkgutil: [
    "org.opencpn",
    "org.opencpn.pkg.OpenCPN",
  ]

  zap trash: [
    "~/Library/Logs/opencpn.log",
    "~/Library/Preferences/opencpn",
    "~/Library/Preferences/org.opencpn.plist",
    "~/Library/Saved Application State/org.opencpn.savedState",
  ]
end
