cask "microsoft-edge@dev" do
  linkid = on_arch_conditional arm: "2099619", intel: "2069340"

  on_arm do
    version "128.0.2650.0,d0dee1f8-bb85-4fa7-90d2-45d52890880f"
    sha256 "3bbc7ba876edf45cf45cd6abc0118fa73e8ed044670a56704fa964c89bac1325"
  end
  on_intel do
    version "128.0.2650.0,ab35f56a-22da-4130-bb77-34ce1ef6fbc5"
    sha256 "2fd4a017c32e0b83fa67304c25043b889e1d5a7f6467781cb9ade2f87bd02297"
  end

  url "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/#{version.csv.second}/MicrosoftEdgeDev-#{version.csv.first}.pkg"
  name "Microsoft Edge Dev"
  desc "Multi-platform web browser"
  homepage "https://www.microsoft.com/en-us/edge/download/insider?form="

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=#{linkid}"
    regex(%r{/([^/]+)/MicrosoftEdgeDev[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true

  pkg "MicrosoftEdgeDev-#{version.csv.first}.pkg",
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
              "com.microsoft.EdgeUpdater.wake.109.0.1518.89.system",
              "com.microsoft.EdgeUpdater.wake.system",
            ],
            pkgutil:   "com.microsoft.edgemac.Dev"

  zap trash: [
    "~/Library/Application Support/Microsoft Edge Dev",
    "~/Library/Caches/Microsoft Edge Dev",
    "~/Library/Preferences/com.microsoft.edgemac.Dev.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.Dev.savedState",
  ]
end
