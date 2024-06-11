cask "microsoft-edge@dev" do
  linkid = on_arch_conditional arm: "2099619", intel: "2069340"

  on_arm do
    version "127.0.2638.2,40e803a7-99a2-4d30-8da6-b7f158a1abc9"
    sha256 "bea8cb8d183ae4b834a9bcfd1b6aa47c7c03ac702ce86dbfc2152ad4c07ed0d3"
  end
  on_intel do
    version "127.0.2638.2,e458f9e8-3c41-4f59-9158-2a3716f22cd0"
    sha256 "dfbb3f0f0dc3c0c76f99123f94ea5c5e77ddce5fb84a7c64ffa8fa29055aab96"
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
