cask "openin" do
  version "3.0.5"
  sha256 "cd119af8cd1f71aa1978e69252c283ae3a80838adcb536da45f4ae2bf6bbd7e2"

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
