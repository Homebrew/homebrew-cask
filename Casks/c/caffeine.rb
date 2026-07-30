cask "caffeine" do
  version "1.0.0"
  sha256 "f4d1337c41b1a323cec901dfac1a3abf6ad3c3a98729987684b1be277f513403"

  url "https://github.com/RyanStoffel/caffeine/releases/download/v#{version}/Caffeine.zip"
  name "Caffeine"
  desc "Tiny menu bar app to keep display awake"
  homepage "https://github.com/RyanStoffel/caffeine"

  depends_on macos: :ventura

  app "Caffeine.app"

  zap trash: "~/Library/Preferences/com.ryanstoffel.caffeine.plist"
end
