cask "microsoft-edge" do
  version "92.0.902.84"

  if Hardware::CPU.intel?
    url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdge-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
    sha256 "1cb38e5d07392a3e4598e8644842e97e5583324c1c53df77f4c3c60fde726c2b"
  else
    url "https://officecdn-microsoft-com.akamaized.net/pr/03ADF619-38C6-4249-95FF-4A01C0FFC962/MacAutoupdate/MicrosoftEdge-#{version}.pkg",
        verified: "officecdn-microsoft-com.akamaized.net/pr/03ADF619-38C6-4249-95FF-4A01C0FFC962/MacAutoupdate/"
    sha256 "a7d89f36b40cc4c942f5bf8a72f22dc699e35050f465d4302dfc80946967edcd"
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
