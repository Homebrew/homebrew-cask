cask "hot" do
  version "1.9.3"
  sha256 "7ffa131ebbd4ccee086ddf735683addfd8d901651de3e5c6867ab79a0a803c7c"

  url "https://github.com/macmade/Hot/releases/download/#{version}/Hot.zip"
  name "Hot"
  desc "Menu bar application that displays the CPU speed limit due to thermal issues"
  homepage "https://github.com/macmade/Hot"

  auto_updates true

  app "Hot.app"

  zap trash: [
    "~/Library/Caches/com.xs-labs.Hot",
    "~/Library/Preferences/com.xs-labs.Hot.plist",
  ]
end
