cask "microsoft-edge" do
  linkid = on_arch_conditional arm: "2093504", intel: "2069148"

  on_arm do
    version "127.0.2651.74,a02346ad-1475-4f63-8fba-bd4b5755fcb1"
    sha256 "081684b050baf0db09859b778538a194cbf0df948b08fa731713a7d8d558c0a0"
  end
  on_intel do
    version "127.0.2651.74,b556d96a-fcd6-43e8-96fd-e0b554ed960f"
    sha256 "782aa4182159a10e9db52e8fe8c7de353ac0fc15f1ca8f439f48148408c0df28"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdge-#{version.csv.first}.pkg"
  name "Microsoft Edge"
  desc "Web browser"
  homepage "https://www.microsoft.com/en-us/edge?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdge[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true

  pkg "MicrosoftEdge-#{version.csv.first}.pkg",
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
            pkgutil:   "com.microsoft.edgemac"

  zap delete: "/Library/Application Support/Microsoft/EdgeUpdater",
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
      ],
      rmdir:  "/Library/Application Support/Microsoft"
end
