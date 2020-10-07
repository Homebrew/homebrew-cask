cask "bob" do
  version "0.5.1"
  sha256 "972c919635c85a96cabaa76237e788122593f04e9e0d7c724150cecc8db8c306"

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
