cask "microsoft-edge" do
  version "157.0.4341.60,e6f68d66-b355-497a-9ea2-dde37f87e4cb"
  sha256 "d04a747b742c74ced1b000b76cb8cebee17d05bb0a8bfb5ccef6aab83f70aab0"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdge-#{version.csv.first}.dmg"
  name "Microsoft Edge"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2192091"
    regex(%r{/([^/]+)/MicrosoftEdge[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Microsoft Edge.app"

  uninstall launchctl: "com.microsoft.EdgeUpdater.wake",
            quit:      "com.microsoft.edgemac"

  zap trash: [
        "~/Library/Application Scripts/com.microsoft.edgemac.wdgExtension",
        "~/Library/Application Scripts/UBF8T346G9.com.microsoft.edgemac.widgets",
        "~/Library/Application Support/Microsoft Edge",
        "~/Library/Application Support/Microsoft/EdgeUpdater",
        "~/Library/Caches/com.microsoft.edgemac",
        "~/Library/Caches/com.microsoft.EdgeUpdater",
        "~/Library/Caches/Microsoft Edge",
        "~/Library/Containers/com.microsoft.edgemac.wdgExtension",
        "~/Library/Group Containers/UBF8T346G9.com.microsoft.edgemac.widgets",
        "~/Library/HTTPStorages/com.microsoft.edgemac",
        "~/Library/HTTPStorages/com.microsoft.EdgeUpdater",
        "~/Library/LaunchAgents/com.microsoft.EdgeUpdater.*.plist",
        "~/Library/Microsoft/MicrosoftSoftwareUpdate/Actives/com.microsoft.edgemac",
        "~/Library/Preferences/com.microsoft.edgemac.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.savedState",
        "~/Library/WebKit/com.microsoft.edgemac",
      ],
      rmdir: [
        "~/Library/Application Support/Microsoft",
        "~/Library/Microsoft",
      ]
end
