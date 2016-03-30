cask 'jabber-video' do
  version '4.8.8.18390'
  sha256 '571375bb9fa9f01994633a9e395ec42c4b1869e28d5f5559678f9981c4af4a9c'

  url "http://sjc1-movi-pr-download-vip.ciscojabbervideo.com/JabberVideo_#{version}.dmg"
  name 'Cisco Systems Jabber Video'
  homepage 'https://www.ciscojabbervideo.com/home'
  license :closed

  app 'Jabber Video.app'

  postflight do
    # Remove ForcedConfig.plist from App bundle. This plist prevents us from editing the internal, external servers and Sip domain
    # See Cisco Jabber Video for Telepresence 4.8 Administrator Guide for more details
    # https://www.cisco.com/c/en/us/td/docs/telepresence/endpoint/Jabber_Video/4_8/CJAB_BK_J4DBC2E7_00_jabber-video-admin-guide-4-8/CJAB_BK_J4DBC2E7_00_jabber-video-admin-guide-4-8_chapter_011.html#CJAB_TP_P465596C_00
    system '/bin/rm', '--', "#{staged_path}/Jabber Video.app/Contents/Resources/ForcedConfig.plist"
  end

  zap delete: [
                '/Library/Preferences/com.cisco.JabberVideo.plist',
                '~/Library/Preferences/com.cisco.JabberVideo.plist',
                '~/Library/Application Support/Jabber Video',
                '~/Library/Logs/Jabber Video',
              ],
      script: 'Jabber Video.app/Contents/SharedSupport/remove_user_data.sh'
end
