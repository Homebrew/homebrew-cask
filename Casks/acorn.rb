cask "acorn" do
  version "6.6.4,13874"
  sha256 "9c028013edb8a7bab155f8b7fbc5d3da6e32ddaefa58ffae82063207abe99ff2"

  url "https://flyingmeat.com/download/Acorn-#{version.before_comma}.zip"
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
