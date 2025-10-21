cask "displaylink" do
  on_big_sur :or_older do
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

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "14.1,2025-10"
    sha256 "40427945890d17fbb738e373f9f979318659eb0b2cf9cb14a996d64549d4d056"

    url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20Manager%20Graphics%20Connectivity#{version.csv.first}-EXE.zip"

    livecheck do
      url "https://www.synaptics.com/products/displaylink-graphics/downloads/macos"
      regex(%r{href=.*?/(\d+(?:[.-]\d+)+)/DisplayLink%20Manager%20Graphics%20Connectivityv?(\d+(?:\.\d+)+).*?\.txt}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end

    rename "DisplayLinkManager-#{version.csv.first}*pkg", "DisplayLinkManager-#{version.csv.first}.pkg"

    pkg "DisplayLinkManager-#{version.csv.first}.pkg"
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
