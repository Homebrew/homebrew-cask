cask "bob" do
  version "0.10.1"
  sha256 "f01bc9f8fce6eb01d1801f014444206f388e5f2065d19e8c8649c302b594d29e"

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
