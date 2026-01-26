cask "komet" do
  version "1.5,52"
  sha256 "26f78ba3ead04ff7d5d678a2ae885af06cd41dd4a6fa5827e6afafe86eac428f"

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
