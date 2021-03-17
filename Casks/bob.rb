cask "bob" do
  version "0.6.1"
  sha256 "b3308f9cb17b5dfea2bfae30257f0d69743cc1f325fa198f1ad59a535a4651bf"

  url "https://github.com/ripperhe/Bob/releases/download/v#{version}/Bob.zip"
  appcast "https://github.com/ripperhe/Bob/releases.atom"
  name "Bob"
  desc "Translation application for text, pictures, and manual input"
  homepage "https://github.com/ripperhe/Bob"

  depends_on macos: ">= :sierra"

  app "Bob.app"

  zap trash: [
    "~/Library/Preferences/com.ripperhe.Bob.plist",
    "~/Library/Caches/com.ripperhe.Bob",
  ]
end
