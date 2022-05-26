cask "linphone" do
  version "4.4.2"
  sha256 "5ec863e45240488f63e8e374b0dc1aa6d5ec246c9a8b605b05912bc52d1fbc89"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://www.linphone.org/releases/macosx/RELEASE"
    regex(%r{/Linphone-(\d+(?:\.\d+)+)-mac\.dmg}i)
  end

  app "Linphone.app"
end
