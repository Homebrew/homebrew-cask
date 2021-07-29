cask "microsoft-edge" do
  version "92.0.902.62"

  if Hardware::CPU.intel?
    url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdge-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
    sha256 "b8de07c6c8cd01d91a818320f7c031c85f178320549a071a05696c3635e382d7"
  else
    url "https://officecdn-microsoft-com.akamaized.net/pr/03ADF619-38C6-4249-95FF-4A01C0FFC962/MacAutoupdate/MicrosoftEdge-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/pr/03ADF619-38C6-4249-95FF-4A01C0FFC962/MacAutoupdate/"
    sha256 "baf0d28fddea6f1e62d6d772c1269339e1da81464a771d8640d2556f77d03214"
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
