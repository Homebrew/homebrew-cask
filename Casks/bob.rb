cask "bob" do
  version "0.6.0"
  sha256 "5363f7e307a6d67630314128599ab4805a8ceaf634e248c3dba35c74378c4a35"

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
