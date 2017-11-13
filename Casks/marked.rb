cask 'marked' do
  version '2.5.10230'
  sha256 '8bcd26bfbe1ccf7771ae7a94f7b97475f85fdc18c34b383b92250779365590c9'

  url "https://updates.marked2app.com/Marked#{version}.zip"
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: '54aa4b6bbd4f49b7e23a8be54f3c59f14ede4877f46dfad817176da5fe7aeaee'
  name 'Marked'
  homepage 'http://marked2app.com/'

  auto_updates true

  app "Marked #{version.major}.app"

  uninstall quit: "com.brettterpstra.marked#{version.major}"

  zap delete: [
                "~/Library/Application Support/Marked #{version.major}",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked#{version.major}.sfl*",
                "~/Library/Caches/Marked #{version.major}",
                "~/Library/Caches/com.brettterpstra.marked#{version.major}",
                "~/Library/Logs/Marked #{version.major}",
                "~/Library/Preferences/com.brettterpstra.marked#{version.major}.plist",
                "~/Library/Saved Application State/com.brettterpstra.marked#{version.major}.savedState",
              ]
end
