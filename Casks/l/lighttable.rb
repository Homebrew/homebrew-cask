cask "lighttable" do
  version "0.8.1"
  sha256 "423e9caf6db4dfe26a0167ea6ba998d747f233e2cd9cd97b7fee027c5c0c3992"

  url "https://github.com/LightTable/LightTable/releases/download/#{version}/lighttable-#{version}-mac.tar.gz",
      verified: "github.com/LightTable/LightTable/"
  name "Light Table"
  desc "IDE"
  homepage "http://lighttable.com/"

  deprecate! date: "2024-01-06", because: :discontinued

  app "lighttable-#{version}-mac/LightTable.app"
  binary "lighttable-#{version}-mac/light"

  zap trash: [
    "~/Library/Application Support/LightTable/plugins",
    "~/Library/Application Support/LightTable/settings",
    "~/Library/Preferences/com.kodowa.LightTable.plist",
  ]
end
