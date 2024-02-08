cask "apple-events" do
  version "1.6"
  sha256 "00dee705888f2e7f8f036afe06bafb7d70042bd1eaa1bdf93146fddb63bc8e76"

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}.zip"
  name "Apple Events"
  desc "Unofficial Apple Events app"
  homepage "https://github.com/insidegui/AppleEvents"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true

  app "Apple Events.app"

  zap trash: [
    "~/Library/Application Support/br.com.guilhermerambo.Apple-Events",
    "~/Library/Caches/br.com.guilhermerambo.Apple-Events",
    "~/Library/Preferences/br.com.guilhermerambo.Apple-Events.plist",
  ]
end
