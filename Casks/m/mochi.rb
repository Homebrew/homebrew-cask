cask "mochi" do
  arch arm: "-arm64"

  version "1.17.13"
  sha256 arm:   "bcbe8a1eee3d989075438c6bba2f680d664046138ad70368db1796d1602873f7",
         intel: "bbbb583849368e6c1e5293bcc22f87f0064eef1e2af21ee38f67246018ccf68d"

  url "https://mochi.cards/releases/Mochi-#{version}#{arch}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url :homepage
    regex(/href=.*?Mochi[._-]?v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  app "Mochi.app"

  zap trash: [
    "~/Library/Application Support/mochi",
    "~/Library/Logs/Mochi",
    "~/Library/Preferences/com.msteedman.mochi.plist",
    "~/Library/Saved Application State/com.msteedman.mochi.savedState",
  ]
end
