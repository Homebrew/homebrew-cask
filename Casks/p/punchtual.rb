cask "punchtual" do
  version "0.5.13"
  sha256 "4a8d4b9032c71a5cc6fd86bd8e8280e111adf4a55446fdb3dbd63ed60b514bc4"

  url "https://punchtual.app/downloads/Punchtual-#{version}.dmg"
  name "Punchtual"
  desc "Clocks you in and out of your work time clock on schedule"
  homepage "https://punchtual.app/"

  livecheck do
    url "https://punchtual.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Punchtual.app"

  uninstall quit: [
    "com.developeroffice.punchtual",
    "com.developeroffice.punchtual.keeper",
  ]

  zap trash: [
    "~/Library/Caches/com.developeroffice.punchtual",
    "~/Library/Containers/com.developeroffice.punchtual",
    "~/Library/Containers/com.developeroffice.punchtual.kcprobe",
    "~/Library/Containers/com.developeroffice.punchtual.keeper",
    "~/Library/HTTPStorages/com.developeroffice.punchtual",
    "~/Library/Preferences/com.developeroffice.punchtual.plist",
  ]
end
