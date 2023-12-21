cask "skype-for-business" do
  version "16.30.0.32"
  sha256 "2fd2b95367f9d320f8bc2dcee4ff49a73218a3f6128e8ca83e6346caf899c990"

  url "https://download.microsoft.com/download/D/0/5/D055DA17-C7B8-4257-89A1-78E7BBE3833F/SkypeForBusinessInstaller-#{version}.pkg"
  name "Skype for Business"
  desc "Microsofts instant messaging enterprise software"
  homepage "https://www.microsoft.com/download/details.aspx?id=54108"

  livecheck do
    url :homepage
    regex(/SkypeForBusinessInstaller[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

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

  uninstall quit:       "com.microsoft.autoupdate2",
            login_item: "Skype for Business",
            pkgutil:    [
              "com.microsoft.SkypeForBusiness",
              "com.microsoft.SkypeForBusiness.MeetingJoinPlugin",
            ],
            delete:     "/Applications/Skype for Business.app"

  zap trash: [
        "/Library/Internet Plug-Ins/MeetingJoinPlugin.plugin",
        "~/Library/Application Support/com.microsoft.SkypeForBusinessTAP",
        "~/Library/Application Support/Skype for Business",
        "~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.debuglogging.plist",
        "~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.plist",
      ],
      rmdir: "/Library/Application Support/Microsoft"
end
