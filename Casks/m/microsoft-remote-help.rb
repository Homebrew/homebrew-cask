cask "microsoft-remote-help" do
  version "1.0.2606021"
  sha256 "9199369e1351d9c2796d7b86946aa76d9aef2e832128121537a96357b9a0ee8a"

  url "https://res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Remote_Help_#{version}_installer.pkg",
      verified: "res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/"
  name "Microsoft Remote Help"
  desc "Screen sharing and assistance tool for enterprise IT support"
  homepage "https://learn.microsoft.com/mem/intune/fundamentals/remote-help"

  livecheck do
    url "https://aka.ms/downloadremotehelpmacos"
    regex(/Microsoft[._-]Remote[._-]Help[._-]v?(\d+(?:\.\d+)+)[._-]installer\.pkg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :monterey

  pkg "Microsoft_Remote_Help_#{version}_installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall quit:    "com.microsoft.autoupdate2",
            pkgutil: "com.microsoft.remotehelp"

  zap trash: [
    "~/Library/Caches/com.microsoft.remotehelp",
    "~/Library/HTTPStorages/com.microsoft.remotehelp",
    "~/Library/Preferences/com.microsoft.remotehelp.plist",
    "~/Library/Saved Application State/com.microsoft.remotehelp.savedState",
  ]
end
