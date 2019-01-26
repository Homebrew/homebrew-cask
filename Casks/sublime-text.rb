cask 'sublime-text' do
  version '3.188'
  sha256 '0a522c14efd530116d69ae13bb2dcb9a7d73277d944cbdd6fc84c4916cdde6a2'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version.no_dots}.dmg"
  appcast "https://www.sublimetext.com/updates/#{version.major}/stable/appcast_osx.xml"
  name 'Sublime Text'
  homepage "https://www.sublimetext.com/#{version.major}"

  auto_updates true
  conflicts_with cask: 'sublime-text-dev'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  zap trash: [
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.#{version.major}.sfl*",
               "~/Library/Application Support/Sublime Text #{version.major}",
               "~/Library/Caches/com.sublimetext.#{version.major}",
               "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
               "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
             ]
end
