cask "endless-sky" do
  version "0.11.2"
  sha256 "338f139a790f55a41444b77bd8361bd9f21f3f5a010f52421596ffd4391e55ef"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/Endless-Sky-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Endless Sky.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/endless-sky.sfl",
    "~/Library/Application Support/endless-sky",
    "~/Library/Saved Application State/Endless-Sky.savedState",
  ]
end
