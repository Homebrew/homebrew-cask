cask 'marked' do
  version '2.5.40987'
  sha256 'ebec7feee7ece13ac41ce60a5a992d44facbb37890b9899d7ef66f51b0570e5b'

  url "https://updates.marked2app.com/Marked#{version}.zip"
  appcast 'https://updates.marked2app.com/marked.xml'
  name 'Marked'
  homepage 'https://marked2app.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "Marked #{version.major}.app"

  uninstall quit: "com.brettterpstra.marked#{version.major}"

  zap trash: [
               "~/Library/Application Support/Marked #{version.major}",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked#{version.major}.sfl*",
               "~/Library/Caches/Marked #{version.major}",
               "~/Library/Caches/com.brettterpstra.marked#{version.major}",
               "~/Library/Logs/Marked #{version.major}",
               "~/Library/Preferences/com.brettterpstra.marked#{version.major}.plist",
               "~/Library/Saved Application State/com.brettterpstra.marked#{version.major}.savedState",
             ]
end
