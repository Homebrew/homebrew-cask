cask "microsoft-edge@dev" do
  version "145.0.3734.2,2da50393-9696-4697-806e-8f119f2b894c"
  sha256 "f03808b368fc966d619f85b4f44e2337dfdf9f12aa8a8949ed06ed3467f5907d"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeDev-#{version.csv.first}.dmg"
  name "Microsoft Edge Dev"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2093292"
    regex(%r{/([^/]+)/MicrosoftEdgeDev[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Microsoft Edge Dev.app"

  uninstall launchctl: "com.microsoft.EdgeUpdater.wake"

  zap trash: [
        "~/Library/Application Scripts/com.microsoft.edgemac.wdgExtension.Dev",
        "~/Library/Application Support/Microsoft Edge Dev",
        "~/Library/Application Support/Microsoft/EdgeUpdater",
        "~/Library/Caches/com.microsoft.edgemac.Dev",
        "~/Library/Caches/com.microsoft.EdgeUpdater",
        "~/Library/Caches/Microsoft Edge Dev",
        "~/Library/Containers/com.microsoft.edgemac.wdgExtension.Dev",
        "~/Library/HTTPStorages/com.microsoft.edgemac.Dev",
        "~/Library/HTTPStorages/com.microsoft.EdgeUpdater",
        "~/Library/LaunchAgents/com.microsoft.EdgeUpdater.*.plist",
        "~/Library/Microsoft/MicrosoftSoftwareUpdate/Actives/com.microsoft.edgemac.Dev",
        "~/Library/Preferences/com.microsoft.edgemac.Dev.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.Dev.savedState",
        "~/Library/WebKit/com.microsoft.edgemac.Dev",
      ],
      rmdir: [
        "~/Library/Application Support/Microsoft",
        "~/Library/Microsoft",
      ]
end
