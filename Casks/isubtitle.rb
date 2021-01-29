cask "isubtitle" do
  version "3.4,38"
  sha256 "24ac0b2732d223b34cdac9de4ecce6b365bc436becda17daae9fad6cd962c8ba"

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version.before_comma}.zip"
  name "iSubtitle"
  homepage "https://www.bitfield.se/isubtitle/"

  livecheck do
    url "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "iSubtitle.app"
end
