cask 'marked' do
  version '2.5.9925'
  sha256 '81bcbfbe51c1ec987f1d20695a2187fcd848bc46c33c054821fe120c7d82a5c0'

  url "https://updates.marked2app.com/Marked#{version}.zip"
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: 'caf003f39ca2a87922e2d1f6afe17df55bd6bb6f36dcfd16b52e257cf629f5e0'
  name 'Marked'
  homepage 'http://marked2app.com/'

  auto_updates true

  app "Marked #{version.major}.app"

  uninstall quit: "com.brettterpstra.marked#{version.major}"

  zap delete: [
                "~/Library/Application Support/Marked #{version.major}",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked#{version.major}.sfl",
                "~/Library/Caches/Marked #{version.major}",
                "~/Library/Caches/com.brettterpstra.marked#{version.major}",
                "~/Library/Logs/Marked #{version.major}",
                "~/Library/Preferences/com.brettterpstra.marked#{version.major}.plist",
                "~/Library/Saved Application State/com.brettterpstra.marked#{version.major}.savedState",
              ]
end
