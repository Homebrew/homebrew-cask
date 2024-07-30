cask "marked" do
  version "2.6.43,1066"
  sha256 "562ede1495cd49f323472448ed76ff74e124ea7bc9b658d9fdbf71e1c9e8fd06"

  url "https://updates.marked2app.com/Marked#{version.csv.first}#{version.csv.second}.dmg"
  name "Marked"
  desc "Previewer for Markdown, MultiMarkdown and other text markup languages"
  homepage "https://marked2app.com/"

  livecheck do
    url "https://updates.marked2app.com/marked.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Marked #{version.major}.app"

  uninstall quit: "com.brettterpstra.marked#{version.major}"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked#{version.major}.sfl*",
    "~/Library/Application Support/Marked #{version.major}",
    "~/Library/Caches/com.brettterpstra.marked#{version.major}",
    "~/Library/Caches/Marked #{version.major}",
    "~/Library/Logs/Marked #{version.major}",
    "~/Library/Preferences/com.brettterpstra.marked#{version.major}.plist",
    "~/Library/Saved Application State/com.brettterpstra.marked#{version.major}.savedState",
  ]
end
