cask "back-in-time" do
  version "5.1.8"
  sha256 "3285ab833ebb952eddf9a0fe8f1be98fdf7e1f5f35094ef686ffa2c88828fa1f"

  url "https://www.tri-edre.com/pub/files/backintime#{version.major}.dmg"
  name "Back-In-Time"
  desc "Access content of Time Machine backups"
  homepage "https://www.tri-edre.com/english/backintime.html"

  livecheck do
    url "https://www.tri-edre.com/download/download/backintime.html"
    regex(/Back-In-Time\s*(\d+(?:\.\d+)+)/i)
  end

  app "Back-In-Time #{version.major}.app"
end
