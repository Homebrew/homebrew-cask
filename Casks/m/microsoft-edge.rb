cask "microsoft-edge" do
  linkid = on_arch_conditional arm: "2093504", intel: "2069148"

  on_arm do
    version "130.0.2849.52,edaa377f-a845-426a-ba3c-74a49b51a6c9"
    sha256 "589dfc20914892b6a026af57816a335ecf68b440a994a7da5b31ca2b6ce0e3b2"
  end
  on_intel do
    version "130.0.2849.52,abbbd9fd-2920-421b-b09e-3c959330ce28"
    sha256 "10e377d9eaff3adbc741e7242d2feb52942c4c3aad8a70fb04998bc61060ce76"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdge-#{version.csv.first}.pkg"
  name "Microsoft Edge"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdge[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
        "~/Library/Caches/com.microsoft.edgemac",
        "~/Library/Caches/Microsoft Edge",
        "~/Library/Containers/com.microsoft.edgemac.wdgExtension",
        "~/Library/HTTPStorages/com.microsoft.edgemac",
        "~/Library/LaunchAgents/com.microsoft.EdgeUpdater.*.plist",
        "~/Library/Microsoft/MicrosoftSoftwareUpdate/Actives/com.microsoft.edgemac",
        "~/Library/Preferences/com.microsoft.edgemac.plist",
        "~/Library/Saved Application State/com.microsoft.edgemac.savedState",
        "~/Library/WebKit/com.microsoft.edgemac",
      ],
      rmdir:  [
        "/Library/Application Support/Microsoft",
        "~/Library/Microsoft",
      ]
end
