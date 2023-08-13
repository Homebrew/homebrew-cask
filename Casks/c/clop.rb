cask "clop" do
  version "2.0.2"
  sha256 "72c6a3dfddbb512634d3653a11ebc880ac59f1d38c74c518d81b85f58015e884"

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
