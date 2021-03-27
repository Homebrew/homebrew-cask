cask "isubtitle" do
  version "3.4.1,40"
  sha256 "d3141e2a3689e74f5f7b7e3fcfca62ef9a8f13de3aa8808c90be1bf7b403eecf"

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
