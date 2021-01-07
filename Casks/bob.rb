cask "bob" do
  version "0.5.4"
  sha256 "274472389a92603673b8780169857f7cb1db8659fa53e7e399c0d1a26f279e20"

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
