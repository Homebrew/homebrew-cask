cask 'marked' do
  version '2.5.8'
  sha256 '58162745a1cc698611049d4cfdc9354d1b6b42c7f6fdb2a82bfa151c8d1e1931'

  url 'http://marked2app.com/download/Marked.zip'
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: 'd3535eea0a5c3990d26b3ed474d2d8e32add3b6d14b3672b31a5682002db1295'
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
