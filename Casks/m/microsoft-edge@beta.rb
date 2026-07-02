cask "microsoft-edge@beta" do
  version "150.0.4078.48,e8d96157-4723-4bd3-8500-5a0035a5e9c7"
  sha256 "e39580b307ea0fddb3dc250b6343f6cb1b96e315fcfbb01676babb52f3441d36"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeBeta-#{version.csv.first}.dmg"
  name "Microsoft Edge Beta"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2093294"
    regex(%r{/([^/]+)/MicrosoftEdgeBeta[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Microsoft Edge Beta.app"

  uninstall launchctl: "com.microsoft.EdgeUpdater.wake"

  zap trash: [
        "~/Library/Application Scripts/com.microsoft.edgemac.wdgExtension.Beta",
        "~/Library/Application Support/Microsoft Edge Beta",
        "~/Library/Application Support/Microsoft/EdgeUpdater",
        "~/Library/Caches/com.microsoft.edgemac.Beta",
        "~/Library/Caches/com.microsoft.EdgeUpdater",
        "~/Library/Caches/Microsoft Edge Beta",
        "~/Library/Containers/com.microsoft.edgemac.wdgExtension.Beta",
        "~/Library/HTTPStorages/com.microsoft.edgemac.Beta",
        "~/Library/HTTPStorages/com.microsoft.EdgeUpdater",
        "~/Library/LaunchAgents/com.microsoft.EdgeUpdater.*.plist",
        "~/Library/Microsoft/MicrosoftSoftwareUpdate/Actives/com.microsoft.edgemac.Beta",
        "~/Library/Preferences/com.microsoft.edgemac.Beta.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.Beta.savedState",
        "~/Library/WebKit/com.microsoft.edgemac.Beta",
      ],
      rmdir: [
        "~/Library/Application Support/Microsoft",
        "~/Library/Microsoft",
      ]
end
