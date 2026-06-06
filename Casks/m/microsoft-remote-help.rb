cask "microsoft-remote-help" do
  version "1.0.2601221"
  sha256 "9a4d981dfa906c5f10227f906098917307da976700bdd5314b5eed2b6c275ee0"

  url "https://res.public.onecdn.static.microsoft/mro1cdnstorage/1ac37578-5a24-40fb-892e-b89d85b6dfaa/MacAutoupdate/Microsoft_Remote_Help_#{version}_installer.pkg",
      verified: "res.public.onecdn.static.microsoft/"
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
