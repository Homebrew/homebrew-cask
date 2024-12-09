cask "microsoft-edge@canary" do
  linkid = on_arch_conditional arm: "2093293", intel: "2069147"

  on_arm do
    version "133.0.3006.0,65644a52-d56e-43cd-8c45-087358753f48"
    sha256 "ce1704211e5901c01b7759c6a7d5cf774fdaa07b024cf28864c870ebbf7b5d51"
  end
  on_intel do
    version "133.0.3006.0,85e2abcf-7206-4a84-8889-a07495623b1f"
    sha256 "b6b7d46be99ba41c59d06bb60ab3e69977f712098a513ebd87d012de66844a1d"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeCanary-#{version.csv.first}.pkg"
  name "Microsoft Edge Canary"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdgeCanary[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "MicrosoftEdgeCanary-#{version.csv.first}.pkg",
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
            pkgutil:   "com.microsoft.edgemac.Canary"

  zap delete: "/Library/Application Support/Microsoft/EdgeUpdater",
      trash:  [
        "~/Library/Application Scripts/com.microsoft.edgemac.wdgExtension.Canary",
        "~/Library/Application Support/Microsoft Edge Canary",
        "~/Library/Caches/com.microsoft.edgemac.Canary",
        "~/Library/Caches/Microsoft Edge Canary",
        "~/Library/Containers/com.microsoft.edgemac.wdgExtension.Canary",
        "~/Library/HTTPStorages/com.microsoft.edgemac.Canary",
        "~/Library/LaunchAgents/com.microsoft.EdgeUpdater.*.plist",
        "~/Library/Microsoft/MicrosoftSoftwareUpdate/Actives/com.microsoft.edgemac.Canary",
        "~/Library/Preferences/com.microsoft.edgemac.Canary.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.Canary.savedState",
        "~/Library/WebKit/com.microsoft.edgemac.Canary",
      ],
      rmdir:  [
        "/Library/Application Support/Microsoft",
        "~/Library/Microsoft",
      ]
end
