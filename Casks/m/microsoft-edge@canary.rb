cask "microsoft-edge@canary" do
  linkid = on_arch_conditional arm: "2093293", intel: "2069147"

  on_arm do
    version "136.0.3226.0,80d1c19e-789f-40e8-95b8-8b83f7f6cfb8"
    sha256 "187e92e6b5bdbd87315d2ef1b8f4e2125efb083fe141ede7f17117bbd9e7bdd2"
  end
  on_intel do
    version "136.0.3226.0,42acecd9-2da7-4cef-b043-6f2ece43623e"
    sha256 "cf74c24e33c55c7a5684d66273ddc272a12e07c38b4f8d7812599be4c7ffea98"
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
