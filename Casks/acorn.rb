cask "acorn" do
  version "7.2,16105"
  sha256 "aab31f0dd1101e7b05b9fbcc51d22057e3bc6a34982af2e94832d80b8dcd2665"

  url "https://flyingmeat.com/download/Acorn-#{version.csv.first}.zip"
  name "Acorn"
  desc "Image editor focused on simplicity"
  homepage "https://flyingmeat.com/acorn/"

  livecheck do
    url "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Acorn.app"

  zap trash: [
    "~/Library/Application Support/Acorn",
    "~/Library/Caches/com.flyingmeat.Acorn#{version.major}",
    "~/Library/Preferences/com.flyingmeat.Acorn#{version.major}.plist",
    "~/Library/Saved Application State/com.flyingmeat.Acorn#{version.major}.savedState",
  ]
end
