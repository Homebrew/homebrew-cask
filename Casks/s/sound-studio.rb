cask "sound-studio" do
  version "4.11.0"
  sha256 "3676e1fe56c4c6df3400ee00d2864b3130611e0c30cf7f9e253eab8b5938e594"

  url "https://download.felttip.com/sound_studio_#{version}.t.zip"
  name "Sound Studio"
  desc "Audio recorder and editor"
  homepage "https://www.felttip.com/ss/"

  livecheck do
    url "https://felttip.com/ss/appcast-trial.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Sound Studio.app"

  zap trash: "~/Library/Preferences/com.felttip.SoundStudio.trial.plist"
end
