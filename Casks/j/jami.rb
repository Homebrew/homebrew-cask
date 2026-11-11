cask "jami" do
  version "2.43,2026111021"
  sha256 "b942d7318c1638a445a96b0d22753d1dd4aeab8c5b6fdf1092c8efce1a0dbcce"

  url "https://dl.jami.net/mac_osx/jami#{version.csv.second}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
