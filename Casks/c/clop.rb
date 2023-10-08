cask "clop" do
  version "2.2.0"
  sha256 "82ef228f8aaa060b3e8142cb31a3f87f173328c98b73457832bfa3ccb2bac693"

  url "https://files.lowtechguys.com/releases/Clop-#{version}.dmg"
  name "Clop"
  desc "Image, video and clipboard optimiser"
  homepage "https://lowtechguys.com/clop/"

  livecheck do
    url "https://files.lowtechguys.com/clop/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Clop.app"

  zap trash: [
    "~/Library/Application Support/Clop",
    "~/Library/Caches/Clop",
    "~/Library/Preferences/com.lowtechguys.Clop.plist",
  ]
end
