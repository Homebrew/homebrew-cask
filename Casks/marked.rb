cask 'marked' do
  version '2.5.14947'
  sha256 '418a6d3ca289a42d8fa20d9d446102cd2ff5298b520e281a7f8ab94861b38e12'

  url "https://updates.marked2app.com/Marked#{version}.zip"
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: '6202237bac8c249ad9da73ca75aaac7aa1ed34a9bd89604306ffabd6a643f869'
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
