cask "microsoft-edge" do
  folder = on_arch_conditional arm:   "c0524a6a-d84f-43f0-ae7f-6f4663c597b1",
                               intel: "0389217d-b41f-4330-9d5e-c84677a98e15"
  linkid = on_arch_conditional arm: "2093504", intel: "2069148"

  version "113.0.1774.42"
  sha256 arm:   "0f3ebc8e857c583a51a29f8f015d8c59338bf2d7e93f6caf1699ca51e8f668d6",
         intel: "c4d31b975eff09db6af195e0c150a25b3ffa5e28e27964a941a1378a5606ead3"

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
      trash:   [
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
