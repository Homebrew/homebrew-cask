cask "bob" do
  version "0.8.1"
  sha256 "853990df3918df866ab593e24d5545c38d5743f3e251f2745c637938ee752885"

  url "https://github.com/ripperhe/Bob/releases/download/v#{version}/Bob.zip"
  name "Bob"
  desc "Translation application for text, pictures, and manual input"
  homepage "https://github.com/ripperhe/Bob"

  depends_on macos: ">= :sierra"

  app "Bob.app"

  zap trash: [
    "~/Library/Caches/com.ripperhe.Bob",
    "~/Library/Preferences/com.ripperhe.Bob.plist",
  ]
end
