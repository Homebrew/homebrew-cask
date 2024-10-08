cask "microsoft-edge@beta" do
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  on_arm do
    version "130.0.2849.27,6d0a427a-4742-45e5-8d71-b01ec280b36b"
    sha256 "9cd87ecc6fba3949e8e87c0ba98ae29e32808f01934a904426bd38f093f24835"
  end
  on_intel do
    version "130.0.2849.27,f187f906-68fd-46fe-a472-689b97808df5"
    sha256 "3a996b334fab0481885218623e95fae976e9e11063286bfc80f4bd3c0f36657e"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeBeta-#{version.csv.first}.pkg"
  name "Microsoft Edge Beta"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdgeBeta[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "MicrosoftEdgeBeta-#{version.csv.first}.pkg",
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
            pkgutil:   "com.microsoft.edgemac.Beta"

  zap delete: "/Library/Application Support/Microsoft/EdgeUpdater",
      trash:  [
        "~/Library/Application Scripts/com.microsoft.edgemac.wdgExtension.Beta",
        "~/Library/Application Support/Microsoft Edge Beta",
        "~/Library/Caches/com.microsoft.edgemac.Beta",
        "~/Library/Caches/Microsoft Edge Beta",
        "~/Library/Containers/com.microsoft.edgemac.wdgExtension.Beta",
        "~/Library/HTTPStorages/com.microsoft.edgemac.Beta",
        "~/Library/LaunchAgents/com.microsoft.EdgeUpdater.*.plist",
        "~/Library/Microsoft/MicrosoftSoftwareUpdate/Actives/com.microsoft.edgemac.Beta",
        "~/Library/Preferences/com.microsoft.edgemac.Beta.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.Beta.savedState",
        "~/Library/WebKit/com.microsoft.edgemac.Beta",
      ],
      rmdir:  [
        "/Library/Application Support/Microsoft",
        "~/Library/Microsoft",
      ]
end
