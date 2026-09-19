cask "busycal" do
  version "2026.3.3,2026-09-18-23-46-54"
  sha256 "a9b8322dc81c952d234537beacdca90d6f816268c8770fe094d6b93d6c864e9e"

  url "https://downloads.busymac.com/bcl-#{version.csv.first}-#{version.csv.second}.zip"
  name "BusyCal"
  desc "Calendar software focusing on flexibility and reliability"
  homepage "https://busymac.com/busycal/index.html"

  livecheck do
    url "https://www.busymac.com/download/BusyCal.zip"
    regex(%r{/bcl[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)\.zip}i)
    strategy :header_match do |headers, regex|
      headers["location"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on :macos

  pkg "BusyCal Installer.pkg"

  uninstall launchctl: "N4RA379GBW.com.busymac.busycal3.alarm",
            quit:      "N4RA379GBW.com.busymac.busycal3.alarm",
            signal:    ["TERM", "com.busymac.busycal3"],
            pkgutil:   "com.busymac.busycal3.pkg",
            delete:    "/Applications/BusyCal.app"

  zap trash: [
    "~/Library/Application Scripts/com.busymac.busycal#{version.minor}*",
    "~/Library/Application Scripts/N4RA379GBW.com.busymac.busycal#{version.minor}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.busymac.busycal#{version.minor}.sfl*",
    "~/Library/Containers/com.busymac.busycal#{version.minor}",
    "~/Library/Containers/N4RA379GBW.com.busymac.busycal#{version.minor}.alarm",
    "~/Library/Group Containers/com.busymac.busycal#{version.minor}",
    "~/Library/Group Containers/N4RA379GBW.com.busymac.busycal#{version.minor}",
  ]
end
