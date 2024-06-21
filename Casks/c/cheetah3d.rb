cask "cheetah3d" do
  version "8.1.1"
  sha256 :no_check

  url "https://www.cheetah3d.com/download/Cheetah3D.dmg"
  name "Cheetah3D"
  desc "3D modelling, rendering and animation software"
  homepage "https://www.cheetah3d.com/"

  livecheck do
    url "https://www.cheetah3d.com/download.php"
    regex(%r{Download\s<br/>Cheetah3D\s(\d+(?:\.\d+)+)}i)
  end

  app "Cheetah3D.app"

  zap trash: [
    "~/Library/Application Support/Cheetah3D",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.wengenmayer.cheetah3d.sfl*",
    "~/Library/HTTPStorages/de.wengenmayer.Cheetah3D",
    "~/Library/Preferences/de.wengenmayer.Cheetah3D.plist",
  ]
end
