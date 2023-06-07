cask "microsoft-edge" do
  folder = on_arch_conditional arm:   "5b86819a-e1ec-45bb-8269-dc568265aa6a",
                               intel: "739bdf6d-2c11-468d-92be-7964fc6788d8"
  linkid = on_arch_conditional arm: "2093504", intel: "2069148"

  version "114.0.1823.41"
  sha256 arm:   "0be5a9215360ca7a5b2220d7b5301abea9e7f8bdbf4d6bde9d1f40b5703fd702",
         intel: "dedb27a16284b00d4d2ed93973df95ae26b6c8914151048ca11da1b60336510a"

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
