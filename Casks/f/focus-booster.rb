cask "focus-booster" do
  version "2.2.0"
  sha256 "a58f376eaa0588893bf64555699408af5cf0ab6c3f3a15558430c0c3ec1e8a1a"

  url "https://dcwy7j973b6zk.cloudfront.net/downloads/stable/focusbooster#{version}.dmg",
      verified: "dcwy7j973b6zk.cloudfront.net/downloads/stable/"
  name "Focus Booster"
  desc "Time tracker"
  homepage "https://www.focusboosterapp.com/"

  disable! date: "2024-04-28", because: :no_longer_available

  app "focus booster.app"
end
