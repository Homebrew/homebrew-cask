cask "microsoft-edge" do
  version "91.0.864.71"

  if Hardware::CPU.intel?
    url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdge-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
    sha256 "edbd6d14c198023199a48fc54f3ecfc9d06e3d556bf84a1152c636785686d00f"
  else
    url "https://officecdn-microsoft-com.akamaized.net/pr/03ADF619-38C6-4249-95FF-4A01C0FFC962/MacAutoupdate/MicrosoftEdge-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/pr/03ADF619-38C6-4249-95FF-4A01C0FFC962/MacAutoupdate/"
    sha256 "970ed1a80e0213421d794d0f534819b120342840a45530812f25900aa0ae85fd"
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
