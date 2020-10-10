cask "downie" do
  version "4.1.7,4164"
  sha256 "9244d9f42653c33117fe4232ff55cc989b4309e4f7eee716f0e89c4ad061c865"

  # charliemonroesoftware.com/ was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://charliemonroesoftware.com/trial/downie/v#{version.major}/updates.xml"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://software.charliemonroe.net/downie.php"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Downie #{version.major}.app"
end
