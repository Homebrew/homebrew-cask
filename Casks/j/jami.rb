cask "jami" do
  version "2.39,2026032615"
  sha256 "7f9b2f32d07c6f4f76b3f225c641096b43197052c0bf3d4410e5ff9b782c7cc5"

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
  depends_on macos: ">= :ventura"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
