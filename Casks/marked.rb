cask 'marked' do
  version '2.5.17950'
  sha256 '38f0bc6d5ea13ef202a18ea770cb5ee0f2097755c80e6632da3f368036202278'

  url "https://updates.marked2app.com/Marked#{version}.zip"
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: '2be7502e88a0499ce8695297dad3a4a6e2b36afec4e3c7e14b18cc9a07babe81'
  name 'Marked'
  homepage 'http://marked2app.com/'

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
