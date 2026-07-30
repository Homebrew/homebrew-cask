cask "caffeine" do
  version "1.0.0"
  sha256 "c8fae5b494450884038a508d0315af9b2d8bfc8bff1dddea1e09773f069c9ea1"

  url "https://github.com/RyanStoffel/caffeine/releases/download/v#{version}/Caffeine.zip"
  name "Caffeine"
  desc "Tiny menu bar app to keep your Mac's display awake"
  homepage "https://github.com/RyanStoffel/caffeine"

  app "Caffeine.app"

  zap trash: [
    "~/Library/Preferences/com.ryanstoffel.caffeine.plist",
  ]
end
