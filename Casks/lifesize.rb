cask "lifesize" do
  version "2.216.2840"
  sha256 "75427ddb8e8238d8f93634a0b345cdc90c11c2669fde22c5e66f22c3f2eead65"

  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg",
      verified: "download.lifesizecloud.com/"
  name "lifesize"
  homepage "https://www.lifesize.com/"

  app "Lifesize.app"
end
