cask "app-menu" do
  version "0.3"
  sha256 "9162be3405fb6880746a742d72c0559dcfc338e8f0805af960c09f873915be91"

  url "https://github.com/barseghyanartur/app-menu/releases/download/#{version}/ApplicationMenu.dmg"
  name "Application Menu"
  desc "Applications menu utility"
  homepage "https://github.com/barseghyanartur/app-menu"

  livecheck do
    url "https://github.com/barseghyanartur/app-menu/releases/latest"
    strategy :header_match
  end

  depends_on :macos

  app "ApplicationMenu.app"

  zap trash: [
    "~/Library/Caches/ApplicationMenu",
    "~/Library/Preferences/com.delusionalinsanity.ApplicationMenu.plist",
  ]
end
