cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.32.0"
  sha256 arm:   "ee2ba51e0c9cf2ffc520a25859b32d04e23b177e681967f8409e0fea902d6372",
         intel: "f846e62c5655b35fa4ac039b5613e98033ef5f0501b4f62918adf7e64e225764"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
