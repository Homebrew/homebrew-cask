cask "hovrly" do
  version "2.4.5"
  sha256 "2cd4d3fc696a7a59446fea3c0a1d9f77b23cfed8bcd53c6992ffb5dc78711b88"

  url "https://github.com/tarutin/hovrly/releases/download/v#{version}/Hovrly-#{version}-universal.dmg",
      verified: "github.com/tarutin/hovrly/"
  name "Hovrly"
  desc "Display and convert timezones time in different cities"
  homepage "https://hovrly.com/"

  app "Hovrly.app"

  zap trash: [
    "~/Library/Application Support/Hovrly",
    "~/Library/Preferences/com.treasy.hovrly.plist",
    "~/Library/Saved Application State/com.treasy.hovrly.savedState",
  ]
end
