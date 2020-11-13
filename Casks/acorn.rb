cask "acorn" do
  version "6.6.3"
  sha256 "7e378a46ce4a5ca6c0d36a0a99914d73a4471113f2cb38b6dc19473b86825da3"

  url "https://flyingmeat.com/download/Acorn-#{version}.zip"
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name "Acorn"
  desc "Image editor focused on simplicity"
  homepage "https://flyingmeat.com/acorn/"

  auto_updates true

  app "Acorn.app"

  zap trash: [
    "~/Library/Application Support/Acorn",
    "~/Library/Caches/com.flyingmeat.Acorn#{version.major}",
    "~/Library/Preferences/com.flyingmeat.Acorn#{version.major}.plist",
    "~/Library/Saved Application State/com.flyingmeat.Acorn#{version.major}.savedState",
  ]
end
