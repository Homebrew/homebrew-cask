cask "komet" do
  version "1.0,32"
  sha256 "081ab6dd43b9ca53da2b85e1b0ef4904f2d243a78a4e1709e2bd04126c0ea196"

  url "https://zgcoder.net/software/komet/Komet_#{version.csv.first}.zip"
  name "Komet"
  homepage "https://zgcoder.net/#komet"

  livecheck do
    url "https://zgcoder.net/software/komet/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Komet.app"

  zap trash: [
    "~/Library/Preferences/org.zgcoder.Komet.plist",
    "~/Library/Caches/org.zgcoder.Komet",
  ]
end
