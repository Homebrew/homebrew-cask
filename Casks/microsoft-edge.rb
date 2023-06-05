cask "microsoft-edge" do
  folder = on_arch_conditional arm:   "5a7ac9fb-6410-4438-a5d1-24a16ab24157",
                               intel: "a1e41e4c-94c6-42a7-b0fb-ace84443b08a"
  linkid = on_arch_conditional arm: "2093504", intel: "2069148"

  version "113.0.1774.57"
  sha256 arm:   "08a84d425db829e378b558dcc0a3df41a60aa7b25ca999d8afd5ebb3c86382e5",
         intel: "bb4cc1df95efbcd52dcec78652204ca115bc1d422f30664775fbc44872c1a191"

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
