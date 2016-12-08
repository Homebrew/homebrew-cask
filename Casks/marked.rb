cask 'marked' do
  version '2.5.9'
  sha256 '81bcbfbe51c1ec987f1d20695a2187fcd848bc46c33c054821fe120c7d82a5c0'

  url 'http://marked2app.com/download/Marked.zip'
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: 'caf003f39ca2a87922e2d1f6afe17df55bd6bb6f36dcfd16b52e257cf629f5e0'
  name 'Marked'
  homepage 'http://marked2app.com/'

  auto_updates true

  app "Marked #{version.major}.app"

  uninstall quit: "com.brettterpstra.marked#{version.major}"

  zap delete: [
                "~/Library/Application Support/Marked #{version.major}/paddata.padl",
                "~/Library/Application Support/Marked #{version.major}/queue.pak",
                "~/Library/Containers/com.brettterpstra.marked#{version.major}",
                "~/Library/Preferences/com.brettterpstra.marked#{version.major}.LSSharedFileList.plist",
                "~/Library/Saved Application State/com.brettterpstra.marked#{version.major}.savedState",
              ]
end
