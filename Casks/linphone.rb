cask "linphone" do
  version "4.3.2"
  sha256 "de07c87f5ddc4d4ffcf4dbc097620f9faf827bdcb8cbc79d949f67497fd82f42"

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
