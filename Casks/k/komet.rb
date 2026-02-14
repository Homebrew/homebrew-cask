cask "komet" do
  version "1.5.1,53"
  sha256 "6847776467c2ca4f93a6b6b15bef1839fbbc543ef401c6b5390ed1c7d31054d4"

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
