cask "microsoft-edge@canary" do
  linkid = on_arch_conditional arm: "2093293", intel: "2069147"

  on_arm do
    version "132.0.2929.0,edbc660d-cb4f-46d5-8d8e-9433d68a7122"
    sha256 "ff1c714f529d297ce3b3643b3e34636b25a35668efd1b9c9c514a72b24e098f5"
  end
  on_intel do
    version "132.0.2929.0,1f679642-e9e6-4adc-bf83-9eaa3bfca17f"
    sha256 "e5e59a74e1c83f16e38c55321bc870339ecc8f9e425b8088154f244683f9b1d4"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeCanary-#{version.csv.first}.pkg"
  name "Microsoft Edge Canary"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdgeCanary[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
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
