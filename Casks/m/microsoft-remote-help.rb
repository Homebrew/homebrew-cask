cask "microsoft-remote-help" do
  version "1.0.2601221"
  sha256 "2523e95459808b48bd7e3cd3289613966d0ef3b0014aec53321d8ee762cdfdcf"

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
