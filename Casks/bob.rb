cask "bob" do
  version "0.5.3"
  sha256 "7a3ee740a776fb8597665517c26a08e968e7ed0c71713fcf37f4877d055aa7f5"

  url "https://github.com/ripperhe/Bob/releases/download/v#{version}/Bob.zip"
  appcast "https://github.com/ripperhe/Bob/releases.atom"
  name "Bob"
  homepage "https://github.com/ripperhe/Bob"

  depends_on macos: ">= :sierra"

  app "Bob.app"

  zap trash: [
    "~/Library/Preferences/com.ripperhe.Bob.plist",
    "~/Library/Caches/com.ripperhe.Bob",
  ]
end
