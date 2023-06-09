cask "microsoft-edge" do
  folder = on_arch_conditional arm:   "dcaed03b-bd41-40c0-bd42-9c4ab774c5f9",
                               intel: "99b54385-40f7-4275-8c97-386da51bf238"
  linkid = on_arch_conditional arm: "2093504", intel: "2069148"

  version "114.0.1823.43"
  sha256 arm:   "c4d0db7bd50971c6dea451823d19b7c6bc04e1f62fa357464871ad2032656283",
         intel: "e43aa0cf804a796078cc379dac0f22fcacfa569e6fca279522455a2bd50d7908"

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{folder}/MicrosoftEdge-#{version}.pkg"
  name "Microsoft Edge"
  desc "Web browser"
  homepage "https://www.microsoft.com/edge"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    strategy :header_match
  end

  auto_updates true

  pkg "MicrosoftEdge-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil:   "com.microsoft.edgemac",
            launchctl: [
              "com.microsoft.EdgeUpdater.update-internal.109.0.1518.89.system",
              "com.microsoft.EdgeUpdater.update.system",
              "com.microsoft.EdgeUpdater.wake.109.0.1518.89.system",
            ]

  zap delete: "/Library/Application Support/Microsoft/EdgeUpdater",
      rmdir:  "/Library/Application Support/Microsoft",
      trash:  [
        "~/Library/Application Scripts/com.microsoft.edgemac.wdgExtension",
        "~/Library/Application Support/Microsoft Edge",
        "~/Library/Application Support/Microsoft/EdgeUpdater",
        "~/Library/Caches/com.microsoft.edgemac",
        "~/Library/Caches/com.microsoft.EdgeUpdater",
        "~/Library/Caches/Microsoft Edge",
        "~/Library/Containers/com.microsoft.edgemac.wdgExtension",
        "~/Library/HTTPStorages/com.microsoft.edge*",
        "~/Library/LaunchAgents/com.microsoft.EdgeUpdater.*.plist",
        "~/Library/Microsoft/EdgeUpdater",
        "~/Library/Preferences/com.microsoft.edgemac.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.*",
        "~/Library/WebKit/com.microsoft.edgemac",
      ]
end
