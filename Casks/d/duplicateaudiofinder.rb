cask "duplicateaudiofinder" do
  version "0.1"
  sha256 :no_check

  url "https://speechpulse.com/download/duplicateaudiofinder-macos.dmg"
  name "Duplicate Audio Finder"
  desc "Bulk audio file fingerprinting & similarity detector"
  homepage "https://speechpulse.com/avbeam-software-store/duplicateaudiofinder/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :ventura"

  app "DuplicateAudioFinder.app"

  zap trash: "~/Library/Preferences/com.avbeam.duplicateaudiofinder.plist"
end
