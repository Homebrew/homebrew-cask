cask "linphone" do
  version "5.0.5"
  sha256 "faba9a010569bcf8147a910c7042edcc11035d85284fa580b228d7e2a87bb4c5"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://download.linphone.org/releases/macosx/app/"
    regex(/Linphone-(\d+(?:\.\d+)+)-mac\.dmg/i)
  end

  app "Linphone.app"
end
