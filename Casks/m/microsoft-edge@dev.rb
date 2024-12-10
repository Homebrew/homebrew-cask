cask "microsoft-edge@dev" do
  linkid = on_arch_conditional arm: "2099619", intel: "2069340"

  on_arm do
    version "133.0.3000.0,2da1f3c3-f24a-4d06-ba79-33d557ac1485"
    sha256 "44c4f76c0c1e5652656c50ba7d9b50efd9b7726bfc581906d395adcfea231c0b"
  end
  on_intel do
    version "133.0.3000.0,2bc821a5-6bf0-4a50-9b9f-abf5ca603f72"
    sha256 "b4bb109dfc2b246546fecd5f9773a23852790be889f0dbc00f1757a35f596a9b"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeDev-#{version.csv.first}.pkg"
  name "Microsoft Edge Dev"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdgeDev[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "MicrosoftEdgeDev-#{version.csv.first}.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall launchctl: [
              "com.microsoft.EdgeUpdater.update-internal.109.0.1518.89.system",
              "com.microsoft.EdgeUpdater.update.system",
              "com.microsoft.EdgeUpdater.wake.system",
            ],
            pkgutil:   "com.microsoft.edgemac.Dev"

  zap delete: "/Library/Application Support/Microsoft/EdgeUpdater",
      trash:  [
        "~/Library/Application Scripts/com.microsoft.edgemac.wdgExtension.Dev",
        "~/Library/Application Support/Microsoft Edge Dev",
        "~/Library/Caches/com.microsoft.edgemac.Dev",
        "~/Library/Caches/Microsoft Edge Dev",
        "~/Library/Containers/com.microsoft.edgemac.wdgExtension.Dev",
        "~/Library/HTTPStorages/com.microsoft.edgemac.Dev",
        "~/Library/LaunchAgents/com.microsoft.EdgeUpdater.*.plist",
        "~/Library/Microsoft/MicrosoftSoftwareUpdate/Actives/com.microsoft.edgemac.Dev",
        "~/Library/Preferences/com.microsoft.edgemac.Dev.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.Dev.savedState",
        "~/Library/WebKit/com.microsoft.edgemac.Dev",
      ],
      rmdir:  [
        "/Library/Application Support/Microsoft",
        "~/Library/Microsoft",
      ]
end
