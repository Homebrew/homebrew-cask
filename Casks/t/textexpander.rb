cask "textexpander" do
  version "7.8,780.21"
  sha256 "162c34f6ea04aa0764ab7f796cefc22cce3d4a196713b7baade13304cf45d9ff"

  url "https://cdn.textexpander.com/mac/#{version.csv.second}/TextExpander_#{version.csv.first}.dmg"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://textexpander.com/"

  livecheck do
    url "https://cgi.textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end
