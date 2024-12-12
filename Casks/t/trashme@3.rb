cask "trashme@3" do
  version "3.5.6"
  sha256 "d9db9da5a38502243720248f2bcb72e35d06594e58b167ce403ba3aee9d366ac"

  url "https://www.jibapps.com/ressources/trashme3/files/TrashMe.#{version}.zip"
  name "TrashMe 3"
  desc "Cleaner and uninstaller from Jibapps"
  homepage "https://www.jibapps.com/apps/trashme3/"
  
  livecheck do
    url "https://www.jibapps.com/ressources/trashme3/appcast.php"
    strategy :sparkle, &:short_version
  end
  
  auto_updates true
  depends_on macos: ">= :high_sierra"
  
  app "TrashMe 3.app"
  
  uninstall launchctl: "com.jibapps.TrashMe3.Helper",
            quit:      "com.jibapps.TrashMe3"

  zap trash: [
    "~/Library/Group Containers/85Y258L5RV.com.jibapps.TrashMe3",
    "~/Library/Containers/com.jibapps.TrashMe3",
    "~/Library/Containers/com.jibapps.TrashMe3.Helper",
    "~/Library/Application Scripts/com.jibapps.TrashMe3",
    "~/Library/Application Scripts/com.jibapps.TrashMe3.Helper",
  ]
end