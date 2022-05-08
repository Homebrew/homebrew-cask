cask "bob" do
  version "0.9.0"
  sha256 "3e4ddb9bee50a8a76bcf63f2cb4eacb1aebdeb2a78ba45035e85d6430361958f"

  url "https://github.com/ripperhe/Bob/releases/download/v#{version}/Bob.zip"
  name "Bob"
  desc "Translation application for text, pictures, and manual input"
  homepage "https://github.com/ripperhe/Bob"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Bob.app"

  zap trash: [
    "~/Library/Caches/com.ripperhe.Bob",
    "~/Library/Preferences/com.ripperhe.Bob.plist",
  ]
end
