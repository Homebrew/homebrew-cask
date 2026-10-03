cask "mailspring" do
  arch arm: "-AppleSilicon"

  version "1.26.0"
  sha256 arm:   "dbbfd37681adfff54d94a248000108cc8dd1ab3e243764a079aabb2af919732a",
         intel: "21fe030f647c215ab0c13446a9cf1709fd0bba8f9390de4612c27b24616117e3"

  url "https://github.com/Foundry376/Mailspring/releases/download/#{version}/Mailspring#{arch}.zip"
  name "Mailspring"
  desc "Fork of Nylas Mail"
  homepage "https://getmailspring.com/"

  auto_updates true
  depends_on macos: :ventura

  app "Mailspring.app"

  zap trash: [
    "~/Library/Application Support/Mailspring",
    "~/Library/Caches/com.mailspring.*",
    "~/Library/Logs/Mailspring",
    "~/Library/Preferences/com.mailspring.*",
    "~/Library/Saved Application State/com.mailspring.*",
  ]
end
