cask "komet" do
  version "0.9.1"
  sha256 "995d83abf9d30bbf27c0b41bdbcf1e09ec84d020cf9024b5ff15209393b43680"

  url "https://zgcoder.net/software/komet/komet_#{version}.zip"
  appcast "https://zgcoder.net/software/komet/appcast.xml"
  name "Komet"
  homepage "https://zgcoder.net/#komet"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Komet.app"

  zap trash: [
    "~/Library/Preferences/org.zgcoder.Komet.plist",
    "~/Library/Caches/org.zgcoder.Komet",
  ]
end
