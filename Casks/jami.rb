cask "jami" do
  version "2022082419"
  sha256 "97c7d2b4d3da12107739a42e6c0a764089d85ceff3036e70ef22b8a21a7979b2"

  url "https://dl.jami.net/mac_osx/jami#{version}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    regex(/jami(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
