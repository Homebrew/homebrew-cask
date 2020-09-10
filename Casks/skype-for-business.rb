cask "skype-for-business" do
  version "16.28.0.192"
  sha256 "0f82ee3369b6f79c56ca7d0234a28c622506ba37310ea3039671e359582bf302"

  url "https://download.microsoft.com/download/D/0/5/D055DA17-C7B8-4257-89A1-78E7BBE3833F/SkypeForBusinessInstaller-#{version}.pkg"
  appcast "https://www.microsoft.com/download/details.aspx?id=54108"
  name "Skype for Business"
  desc "Microsofts instant messaging enterprise software"
  homepage "https://www.microsoft.com/download/details.aspx?id=54108"

  auto_updates true
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :el_capitan"

  pkg "SkypeForBusinessInstaller-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate.fba", # Office16_all_autoupdate_bootstrapper_updater.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall delete:     "/Applications/Skype for Business.app",
            pkgutil:    [
              "com.microsoft.SkypeForBusiness",
              "com.microsoft.SkypeForBusiness.MeetingJoinPlugin",
            ],
            login_item: "Skype for Business"

  zap trash: [
    "/Library/Internet Plug-Ins/MeetingJoinPlugin.plugin",
    "~/Library/Application Support/com.microsoft.SkypeForBusinessTAP",
    "~/Library/Application Support/Skype for Business",
    "~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.plist",
    "~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.debuglogging.plist",
  ],
      rmdir: "/Library/Application Support/Microsoft"
end
