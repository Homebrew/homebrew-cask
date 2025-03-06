cask "microsoft-edge@beta" do
  linkid = on_arch_conditional arm: "2099618", intel: "2069439"

  on_arm do
    version "134.0.3124.51,23b681f5-6ef5-4969-82a3-31f476bc9adc"
    sha256 "4a461ee2cf68d1b1a122094e9deb5c62a0c394a9681649f4c6591e36aad7cdad"
  end
  on_intel do
    version "134.0.3124.51,a0a9b4cc-4ad8-403f-add0-2b45b1f1cc48"
    sha256 "25632bc289999a25d4cc880b759f2d6a8bd5c47aca25d0e428b33e7d59957fb9"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeBeta-#{version.csv.first}.pkg"
  name "Microsoft Edge Beta"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdgeBeta[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
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
