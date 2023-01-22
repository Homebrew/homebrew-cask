cask "linphone" do
  version "5.0.8"
  sha256 "3b0f82cb8ac3b37b506b3ea8235d7deebde31d0f076a4f5c504bad6df38b41f0"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://download.linphone.org/releases/macosx/app/"
    regex(/Linphone[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  app "Linphone.app"
end
