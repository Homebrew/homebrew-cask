cask "microsoft-edge@dev" do
  version "155.0.4273.0,2a70511c-873d-4175-9927-f9edacd81ab0"
  sha256 "8358c9e94381ed3c3dc04ec629dc78d39c10c0a79b47c56d6daaeb1be34715c1"

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
  depends_on macos: :ventura

  app "Microsoft Edge Dev.app"

  uninstall launchctl: "com.microsoft.EdgeUpdater.wake",
            quit:      "com.microsoft.edgemac.Dev"

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
