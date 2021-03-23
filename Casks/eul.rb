cask "eul" do
  version "1.5.15"
  sha256 "338c9e3163b28f3f68345833b9def9f0913810889962ddd3868fb7b041238368"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
