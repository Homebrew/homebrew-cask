cask "microsoft-edge@dev" do
  linkid = on_arch_conditional arm: "2099619", intel: "2069340"

  on_arm do
    version "131.0.2903.5,4e80f9ec-ef0f-412a-8a14-159141341b15"
    sha256 "a60320ecb8dea6f96508a89ecb8a179af7230843637293195689b40bebfa9f06"
  end
  on_intel do
    version "131.0.2903.5,7848d3e2-3241-4006-a212-831f131ed1c1"
    sha256 "27ceb3e071f161228412788271bedbad49c7c6675647d9b7de1a6cdf88927f10"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeDev-#{version.csv.first}.pkg"
  name "Microsoft Edge Dev"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdgeDev[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
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
