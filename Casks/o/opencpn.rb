cask "opencpn" do
  version "5.14.0,-universal+17193.91f3b6743-14"
  sha256 "d2af5e97218c8231b5ca11b20d1a6b632b26bd590fd17cd5aaec31c020870ac9"

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

  disable! date: "2026-10-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

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
