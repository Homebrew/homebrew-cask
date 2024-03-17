cask "laradumps" do
  version "2.4.3"
  sha256 "ec378ccca78404c8aa8409c4963a8c07afd948597f8072c1791aae48ed1b5e21"

  url "https://github.com/laradumps/app/releases/download/v#{version}/LaraDumps-#{version}-universal-mac.zip",
      verified: "github.com/laradumps/app/"
  name "LaraDumps"
  desc "🛻 LaraDumps is a friendly app designed to boost your Laravel PHP coding and debugging experience."
  homepage "https://laradumps.dev"

  app "LaraDumps.app"

  zap trash: [
      "~/Library/Application Support/laradumps",
      "~/Library/Preferences/com.laradumps.app.plist",
      "~/Library/Saved Application State/com.laradumps.app.savedState",
    ]
end
