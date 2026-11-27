cask "bloopemail" do
  version "1.7.60"
  sha256 "b0606c3ed8246a63f3afb0a6ec6d0b97af11e4fc31c710e87677052c0b00b17a"

  url "https://25aickwyk13jptn2.public.blob.vercel-storage.com/releases/Bloop.email-#{version}.zip"
  name "Bloop.email"
  desc "Email client"
  homepage "https://bloop.email/"

  livecheck do
    url "https://bloop.email/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Bloop.email.app"
  binary "#{appdir}/Bloop.email.app/Contents/Helpers/bloop"

  zap trash: [
    "~/.config/bloop",
    "~/Library/Application Scripts/email.bloop.app",
    "~/Library/Application Scripts/email.bloop.app.widget",
    "~/Library/Application Scripts/RC74LQ8PFR.email.bloop.app",
    "~/Library/Caches/email.bloop.app.sparkle",
    "~/Library/Containers/email.bloop.app",
    "~/Library/Containers/email.bloop.app.widget",
    "~/Library/Group Containers/RC74LQ8PFR.email.bloop.app",
    "~/Library/Preferences/email.bloop.app.plist",
  ]
end
