cask "linphone" do
  version "5.0.2"
  sha256 "58b50d9ab6557066265080e033384b3d0845d765db42ea98e5c643b7b454c2b0"

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
