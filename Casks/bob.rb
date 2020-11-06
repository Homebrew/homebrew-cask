cask "bob" do
  version "0.5.2"
  sha256 "e31adc5d142b4a03609e9100708c50c36472e84f50a6f7f0b918c5e00c501f88"

  url "https://github.com/ripperhe/Bob/releases/download/v#{version}/Bob.app.zip"
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
