cask "busycal" do
  version "2023.2.2,2023-05-15-12-23"
  sha256 "5736972e6fd4c3c63f86d38315cb2e42145266cbf016b36f9bab1c8dd4440d58"

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
            pkgutil:   "com.busymac.busycal3.pkg",
            quit:      "N4RA379GBW.com.busymac.busycal3.alarm",
            signal:    ["TERM", "com.busymac.busycal3"],
            delete:    "/Applications/BusyCal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal#{version.major}.sfl*",
    "~/Library/Containers/com.busymac.busycal#{version.minor}",
    "~/Library/Containers/N4RA379GBW.com.busymac.busycal#{version.minor}.alarm",
    "~/Library/Group Containers/com.busymac.busycal#{version.minor}",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycal#{version.minor}",
  ]
end
