cask "jami" do
  version "2023102014"
  sha256 "1f2982dffa0c6d5fc39842f462003f4f696b7bbf013fe5431d768e66c5206dd7"

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
