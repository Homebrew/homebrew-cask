cask "mochi" do
  arch arm: "-arm64"

  version "1.17.7"
  sha256 arm:   "ac48a010c8611852d63587a73b373b569f0077dd42e6e9cd68ee9e355036356c",
         intel: "de9cca7beaac1848f26b588bba1976ec71ab7f044f566a58d920ee3c0cac48b8"

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
