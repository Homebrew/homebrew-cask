cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.7.2"
  sha256 arm:   "cd00c51c6c394b5e5b59c7ee4d62cfaf4228c3eec7632c2441d647e2e4c574a4",
         intel: "ca3963bfdc77a03e4abd2c6470d3ca5b2c57cdf1591d8efd990df5564be993bd"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customise mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
