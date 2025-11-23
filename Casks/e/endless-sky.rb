cask "endless-sky" do
  version "0.10.16"
  sha256 "09b999ecc91e8dd9778b711749f291be618d8da623b0cb614e5300c0caab49b6"

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

  app "Endless Sky.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/endless-sky.sfl",
    "~/Library/Application Support/endless-sky",
    "~/Library/Saved Application State/Endless-Sky.savedState",
  ]
end
