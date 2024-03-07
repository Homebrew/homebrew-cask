cask "microsoft-edge" do
  linkid = on_arch_conditional arm: "2093504", intel: "2069148"

  on_arm do
    version "122.0.2365.80,9c227984-0429-48e9-bade-ba93774a430a"
    sha256 "4fca764d70068e29d1b4657fb4c8b28bfcd8aebc295368bb49e7560f19af0716"
  end
  on_intel do
    version "122.0.2365.80,11fca4af-cf39-4407-94b7-0574108ba352"
    sha256 "b92174560f5472e594057278034aba3e9dca14c70034494401c88f0c2646f677"
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
