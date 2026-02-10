cask "displaylink" do
  on_ventura :or_older do
    on_catalina :or_older do
      version "1.5,2021-09"
      sha256 "d703cc8e9093e4d163c5e612326c0907a02c6d4eec6aaca8d0727503859ef95d"

      url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20Manager%20Graphics%20Connectivity#{version.csv.first}-EXE.pkg"

      pkg "DisplayLink Manager Graphics Connectivity#{version.csv.first}-EXE.pkg"
    end
    on_big_sur do
      version "1.9,2023-07"
      sha256 "cd7f7c7c313b0699bfa187f7112a45e5c5441264447b381569839318676208aa"

      url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20Manager%20Graphics%20Connectivity#{version.csv.first}-EXE.pkg"

      pkg "DisplayLink Manager Graphics Connectivity#{version.csv.first}-EXE.pkg"
    end
    on_monterey do
      version "1.11,2024-10"
      sha256 "e154588f340aefe887d10e3566703ac381592eefc0175b7f1a53569fcc315a3f"

      url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20Manager%20Graphics%20Connectivity#{version.csv.first}-EXE.pkg"

      pkg "DisplayLink Manager Graphics Connectivity#{version.csv.first}-EXE.pkg"
    end
    on_ventura do
      version "14.2,2025-11"
      sha256 "2a08be4e7fba2c11dbfaf5ea78f60c66e1683a14212c60ff36e24ba469822b1c"

      url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20Manager%20Graphics%20Connectivity#{version.csv.first}-EXE.zip"

      rename "DisplayLinkManager-#{version.csv.first}*pkg", "DisplayLinkManager-#{version.csv.first}.pkg"

      pkg "DisplayLinkManager-#{version.csv.first}.pkg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "15.0,2025-12"
    sha256 "4cedae42b642c3662b3eea0e81989226e5ae510a404bcf1fbbbb90262a71e014"

    url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20Manager%20Graphics%20Connectivity#{version.csv.first}-EXE.pkg"

    livecheck do
      url "https://www.synaptics.com/products/displaylink-graphics/downloads/macos"
      regex(%r{href=.*?/(\d+(?:[.-]\d+)+)/DisplayLink%20Manager%20Graphics%20Connectivityv?(\d+(?:\.\d+)+).*?\.txt}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end

    pkg "DisplayLink Manager Graphics Connectivity#{version.csv.first}-EXE.pkg"
  end

  name "DisplayLink USB Graphics Software"
  desc "Drivers for DisplayLink docks, adapters and monitors"
  homepage "https://www.synaptics.com/products/displaylink-graphics"

  uninstall launchctl: [
              "73YQY62QM3.com.displaylink.DisplayLinkAPServer",
              "com.displaylink.displaylinkmanager",
              "com.displaylink.useragent",
              "com.displaylink.useragent-prelogin",
              "com.displaylink.XpcService",
            ],
            quit:      "DisplayLinkUserAgent",
            pkgutil:   "com.displaylink.*",
            delete:    [
              "/Applications/DisplayLink",
              "/Library/LaunchAgents/com.displaylink.useragent-prelogin.plist",
              "/Library/LaunchAgents/com.displaylink.useragent.plist",
              "/Library/LaunchDaemons/com.displaylink.displaylinkmanager.plist",
            ]

  zap trash: [
    "~/Library/Application Scripts/73YQY62QM3.com.displaylink.DisplayLinkShared",
    "~/Library/Application Scripts/com.displaylink.DisplayLinkUserAgent",
    "~/Library/Containers/com.displaylink.DisplayLinkUserAgent",
    "~/Library/Group Containers/73YQY62QM3.com.displaylink.DisplayLinkShared",
  ]

  caveats do
    reboot
    license "https://www.synaptics.com/products/displaylink-graphics/downloads/macos-connectivity-#{version.csv.first}"
  end
end
