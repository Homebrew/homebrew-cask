cask "displaylink" do
  on_big_sur :or_older do
    on_sierra :or_older do
      version "4.3.1,2021-02"
      sha256 "d5cd6787d6c4ca6a2425984bcbab607e618e9803335455e24196e14e35657b97"

      url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20USB%20Graphics%20Software%20for%20Mac%20OS%20X%20and%20macOS#{version.csv.first}-EXE.dmg"

      pkg "DisplayLink Software Installer.pkg"
    end
    on_high_sierra do
      version "5.1.1,2021-02"
      sha256 "1ac9093f8113af8c35d6f3ff5b1ae3f119a5aff0d5309d75c7a1742f159184b5"

      url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20USB%20Graphics%20Software%20for%20macOS#{version.csv.first}-EXE.dmg"

      pkg "DisplayLink Software Installer.pkg"
    end
    on_mojave do
      version "5.2.6,2021-05"
      sha256 "9f1854cd5720105d6d45c91172419c503358543e4a23d7113387aedf16a39cbb"

      url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20USB%20Graphics%20Software%20for%20macOS#{version.csv.first}-EXE.dmg"

      pkg "DisplayLink Software Installer.pkg"
    end
    on_catalina do
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
    version "1.12.3,2025-05"
    sha256 "022c3a023890ca98cdf0d80328fbd14d3d46c8939eacd520c62b958ad8ac082a"

    url "https://www.synaptics.com/sites/default/files/exe_files/#{version.csv.second}/DisplayLink%20Manager%20Graphics%20Connectivity#{version.csv.first}-EXE.zip"

    livecheck do
      url "https://www.synaptics.com/products/displaylink-graphics/downloads/macos"
      regex(%r{href=.*?/(\d+(?:[.-]\d+)+)/DisplayLink%20Manager%20Graphics%20Connectivityv?(\d+(?:\.\d+)+).*?\.txt}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
      end
    end

    pkg "DisplayLinkManager.pkg"

    preflight do
      staged_path.glob("DisplayLinkManager-*.pkg").first.rename("#{staged_path}/DisplayLinkManager.pkg")
    end
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
