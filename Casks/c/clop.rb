cask "clop" do
  version "2.1.3"
  sha256 "f74699b872bd0ef74b336ce7acb61302a7f3da5a29868e6c1668a151cb678da3"

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
