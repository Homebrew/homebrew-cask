cask "downie" do
  version "4.1.14,4196"
  sha256 "d54f2a2ab68fe736e200ac8581220f66b709b9b0351a009a5ecb88109e430d6e"

  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg",
      verified: "charliemonroesoftware.com/"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://software.charliemonroe.net/downie.php"

  livecheck do
    url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Downie #{version.major}.app"
end
