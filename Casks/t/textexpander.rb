cask "textexpander" do
  version "7.7,770.7"
  sha256 "baa7bb6b62548ad6ff6abba6a8c32362e0c0bb7f9f4926d5dfe26734d76ef666"

  url "https://cdn.textexpander.com/mac/#{version.csv.second}/TextExpander_#{version.csv.first}.dmg",
      verified: "cdn.textexpander.com/mac/"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://smilesoftware.com/TextExpander"

  livecheck do
    url "https://textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end
