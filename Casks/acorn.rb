cask "acorn" do
  version "7.0.2,15785"
  sha256 "32fc1ee10bdcf701b5f9433198b49d8bbc38230cfa012bb371a3d4fb27018c2f"

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
