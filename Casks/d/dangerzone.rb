cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.8.1"
  sha256 arm:   "47369486aac1c6d11410a2d8cb4ec54167f1ecc3fa2b10812e14c3e3ecdcc888",
         intel: "1a26e0a6488f0cfa0a2579b848b636a7ec30f55f7365f00969873db527a929b7"

  url "https://github.com/freedomofpress/dangerzone/releases/download/v#{version}/Dangerzone-#{version}-#{arch}.dmg",
      verified: "github.com/freedomofpress/dangerzone/"
  name "Dangerzone"
  desc "Convert potentially dangerous PDFs or Office documents into safe PDFs"
  homepage "https://dangerzone.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dangerzone.app"

  zap trash: [
    "~/Library/Application Support/dangerzone",
    "~/Library/Saved Application State/press.freedom.dangerzone.savedState",
  ]
end
