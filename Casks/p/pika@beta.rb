cask "pika@beta" do
  version "2.0.1-beta1"
  sha256 "5e9692afb6dca578584d70971e6c32a14289a74e01f18a368f8325d9e786bc5c"

  url "https://github.com/superhighfives/pika/releases/download/#{version}/Pika-#{version}.dmg"
  name "Pika"
  desc "Colour picker for colours onscreen"
  homepage "https://superhighfives.com/pika"

  livecheck do
    url "https://superhighfives.com/releases/pika/betas"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "pika"
  depends_on macos: :sonoma

  app "Pika.app"

  zap trash: [
    "~/Library/Application Scripts/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/Containers/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/Preferences/com.superhighfives.Pika.plist",
  ]
end
