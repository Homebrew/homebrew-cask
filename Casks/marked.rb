cask 'marked' do
  version '2.5.9'
  sha256 '58162745a1cc698611049d4cfdc9354d1b6b42c7f6fdb2a82bfa151c8d1e1931'

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
