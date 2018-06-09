cask 'marked' do
  version '2.5.18952'
  sha256 'c8c70a44c6408ccee2cca7c148d1a6c02fd91dbd7ec083d932d1c67ea39dab3a'

  url "https://updates.marked2app.com/Marked#{version}.zip"
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: 'f539c932b38584bdd937b935e2b8bd72dbe7cad57d459480e885c9e7a4437929'
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
