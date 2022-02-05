cask "openin" do
  version "3.0.3"
  sha256 "e6f17699c9cb59f53c17b07f00b225dcfdd15fefc2e967ebd4999558963f9529"

  url "https://loshadki.app/openin/OpenIn%20#{version}.dmg"
  name "OpenIn"
  desc "Open links/files with specific browsers/apps"
  homepage "https://loshadki.app/openin/"

  livecheck do
    url :homepage
    regex(/href=.*?OpenIn%20v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "OpenIn.app"

  zap trash: [
    "~/Library/Application Scripts/app.loshadki.OpenIn",
    "~/Library/Application Scripts/app.loshadki.OpenIn.Share",
    "~/Library/Application Scripts/app.loshadki.OpenInLauncher",
    "~/Library/Application Scripts/4QE86VV38D.app.loshadki.OpenIn",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.loshadki.openin.sfl2",
    "~/Library/Containers/app.loshadki.OpenIn",
    "~/Library/Containers/app.loshadki.OpenIn.Share",
    "~/Library/Containers/app.loshadki.OpenInLauncher",
    "~/Library/Group Containers/4QE86VV38D.app.loshadki.OpenIn",
  ]
end
