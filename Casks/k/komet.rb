cask "komet" do
  version "1.5.1,54"
  sha256 "bce616503ab914cf9140dde87395a39a8069e008f71bee1467f0f85255a9b227"

  url "https://zgcoder.net/software/komet/Komet_#{version.csv.first}_#{version.csv.second}.tar.xz"
  name "Komet"
  desc "Commit message editor"
  homepage "https://zgcoder.net/#komet"

  livecheck do
    url "https://zgcoder.net/software/komet/appcast_v2.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Komet.app"

  zap trash: [
    "~/Library/Caches/org.zgcoder.Komet",
    "~/Library/Preferences/org.zgcoder.Komet.plist",
  ]
end
