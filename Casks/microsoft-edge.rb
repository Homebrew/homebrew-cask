cask "microsoft-edge" do
  version "92.0.902.78"

  if Hardware::CPU.intel?
    url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdge-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
    sha256 "a20675bc7e76a5e78fa812ad8da96c2542bc5b9eecc1227f908d22167ea46e8d"
  else
    url "https://officecdn-microsoft-com.akamaized.net/pr/03ADF619-38C6-4249-95FF-4A01C0FFC962/MacAutoupdate/MicrosoftEdge-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/pr/03ADF619-38C6-4249-95FF-4A01C0FFC962/MacAutoupdate/"
    sha256 "2a843629151bc2b95d73ae56ce5749ec48a2127b46d3d7ba730f7de7241d839d"
  end

  name "Microsoft Edge"
  desc "Web browser"
  homepage "https://www.microsoft.com/edge"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2069148"
    strategy :header_match
  end

  auto_updates true
  depends_on cask: "microsoft-auto-update"

  pkg "MicrosoftEdge-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: "com.microsoft.edgemac"

  zap trash: [
    "~/Library/Application Support/Microsoft Edge",
    "~/Library/Caches/Microsoft Edge",
    "~/Library/Preferences/com.microsoft.edgemac.plist",
    "~/Library/Saved Application State/com.microsoft.edgemac.savedState",
  ],
      rmdir: "/Library/Application Support/Microsoft"
end
