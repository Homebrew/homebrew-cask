cask "acorn" do
  version "7.4.4"
  sha256 "d4f10c3d82f8c2528bfd0676d19a4656c0f2c4c546f423a2f9a3e546686241ff"

  url "https://flyingmeat.com/download/Acorn-#{version}.zip"
  name "Acorn"
  desc "Image editor focused on simplicity"
  homepage "https://flyingmeat.com/acorn/"

  livecheck do
    url "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Acorn.app"

  zap trash: [
    "~/Library/Application Support/Acorn",
    "~/Library/Caches/com.flyingmeat.Acorn#{version.major}",
    "~/Library/Preferences/com.flyingmeat.Acorn#{version.major}.plist",
    "~/Library/Saved Application State/com.flyingmeat.Acorn#{version.major}.savedState",
  ]
end
