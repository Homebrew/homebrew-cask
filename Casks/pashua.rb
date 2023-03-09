cask "pashua" do
  version "0.11"
  sha256 :no_check

  url "https://www.bluem.net/files/Pashua.dmg"
  name "Pashua"
  homepage "https://www.bluem.net/en/mac/pashua/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Pashua.app"
end
