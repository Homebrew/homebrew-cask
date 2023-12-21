cask "busycal" do
  version "2023.4.4,2023-11-12-21-33"
  sha256 "a517fd7328c98dea58fafb618cf9c1bb028930bce116b267ca7d46cb1937c9c7"

  url "https://7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com/bcl-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "7e968b6ce8a839f034d9-23cfb9eddcb7b94cb43ba95f95a76900.ssl.cf1.rackcdn.com/"
  name "BusyCal"
  desc "Calendar software focusing on flexibility and reliability"
  homepage "https://busymac.com/busycal/index.html"

  livecheck do
    url "https://www.busymac.com/download/BusyCal.zip"
    strategy :header_match do |headers|
      match = headers["location"].match(/bcl-(\d+(?:\.\d+)+)-(.*?)\.zip/)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  pkg "BusyCal Installer.pkg"

  uninstall launchctl: "N4RA379GBW.com.busymac.busycal3.alarm",
            quit:      "N4RA379GBW.com.busymac.busycal3.alarm",
            signal:    ["TERM", "com.busymac.busycal3"],
            pkgutil:   "com.busymac.busycal3.pkg",
            delete:    "/Applications/BusyCal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal#{version.major}.sfl*",
    "~/Library/Containers/com.busymac.busycal#{version.minor}",
    "~/Library/Containers/N4RA379GBW.com.busymac.busycal#{version.minor}.alarm",
    "~/Library/Group Containers/com.busymac.busycal#{version.minor}",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycal#{version.minor}",
  ]
end
