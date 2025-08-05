cask "komet" do
  version "1.1,36"
  sha256 "e9ed4f6ebe0fba0bdf2a5b54b8279d3bdfe74eeeb2bfa32cc66267bedd6b41c0"

  url "https://zgcoder.net/software/komet/Komet_#{version.csv.first}_#{version.csv.second}.tar.xz"
  name "Komet"
  desc "Commit message editor"
  homepage "https://zgcoder.net/#komet"

  livecheck do
    url "https://zgcoder.net/software/komet/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Komet.app"

  zap trash: [
    "~/Library/Caches/org.zgcoder.Komet",
    "~/Library/Preferences/org.zgcoder.Komet.plist",
  ]
end
