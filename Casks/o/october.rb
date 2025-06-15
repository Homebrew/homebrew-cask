cask "october" do
  arch arm: "arm64", intel: "amd64"

  version "1.12.0"
  sha256 arm:   "6130482169f4532e41bfcc7c323a2ef9f1ba689665192d3128a60889eb1ff291",
         intel: "776988b1c321813ce410a1f51980175f1acb42c0f02147b6f2762839aacd0a38"

  url "https://github.com/marcus-crane/october/releases/download/v#{version}/october_#{version}_darwin_#{arch}.zip",
      verified: "github.com/marcus-crane/october/"
  name "October"
  desc "GUI for retrieving Kobo highlights and syncing them with Readwise"
  homepage "https://october.utf9k.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :high_sierra"

  app "October.app"

  zap trash: "~/Library/Application Support/october"
end
