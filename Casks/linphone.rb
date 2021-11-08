cask "linphone" do
  version "4.3.1"
  sha256 "9b868c3857ebc13c013ad1f9f3a7527f8b1fef67ecc6d4a1e58442250760e11a"

  url "https://www.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://www.linphone.org/releases/macosx/RELEASE"
    strategy :page_match
    regex(%r{/Linphone-(\d+(?:\.\d+)+)-mac\.dmg}i)
  end

  app "Linphone.app"
end
