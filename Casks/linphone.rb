cask "linphone" do
  version "4.3.0"
  sha256 "d3dc8817e81cd9961310c76b45c0d005a7bdaa3b86da6a228c8c6c0c2e0c9952"

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
