cask "opencpn" do
  version "5.8.4,-0+637.1637c28"
  sha256 "2c3dc08908c002dcfe61a67b8e594a14d4de7ec486f6e44fc4ddc18219b65b44"

  url "https://github.com/OpenCPN/OpenCPN/releases/download/Release_#{version.csv.first}/OpenCPN_#{version.csv.first}#{version.csv.second}.pkg",
      verified: "github.com/OpenCPN/OpenCPN/"
  name "OpenCPN"
  desc "Full-featured and concise ChartPlotter/Navigator"
  homepage "https://www.opencpn.org/"

  livecheck do
    url :url
    regex(/^OpenCPN[._-]?v?(\d+(?:\.+\d+)+)((?:-\d+)?\+\d+\.\h+)?\.(?:dmg|pkg)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
        end
      end.flatten
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
