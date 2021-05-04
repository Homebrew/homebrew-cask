cask "jami" do
  version "202104272130"
  sha256 "bb3c5e72ce83047cb36dd325b252f2ab35bdeb2938d1481948e7c19fa432039a"

  url "https://dl.jami.net/mac_osx/jami-#{version}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    strategy :page_match
    regex(/jami-(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
