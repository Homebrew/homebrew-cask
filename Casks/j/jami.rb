cask "jami" do
  version "2.40,2026053119"
  sha256 "e083afa75a83dd3a0661f56a5444be970ce61bacb0f524ec7740be85261582c5"

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
  depends_on macos: :ventura

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
