cask "textexpander" do
  version "7.7.1,771.8"
  sha256 "428015d875b977fcdc1917e359b2ed85e5c8e5eb683f4e09a42474bc9f6e789c"

  url "https://cdn.textexpander.com/mac/#{version.csv.second}/TextExpander_#{version.csv.first}.dmg",
      verified: "cdn.textexpander.com/mac/"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://smilesoftware.com/TextExpander"

  livecheck do
    url "https://cgi.textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end
