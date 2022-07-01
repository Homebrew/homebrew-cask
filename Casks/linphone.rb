cask "linphone" do
  version "4.4.7"
  sha256 "3fd0d8a908d4de55bb228429bad581f838de5824522a3ed7de1b0aa93c53acb2"

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
