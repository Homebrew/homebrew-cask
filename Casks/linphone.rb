cask "linphone" do
  version "4.2.5"
  sha256 "9e68a923818b24045fc36fe94a0edeaff094baf815ad598dd103eb815661cd0e"

  url "https://www.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://www.linphone.org/releases/macosx/RELEASE"
    strategy :page_match
    regex(%r{/Linphone-(\d+(?:\.\d+)*)-mac\.dmg}i)
  end

  app "Linphone.app"
end
