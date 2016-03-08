cask 'hocus-focus' do
  version '1.3'
  sha256 '8a51419112d9626497217a9953460c075480a139e1b1a47b175454be8a04f85a'

  url "http://hocusfoc.us/static/releases/hocusfocus-#{version}.zip"
  appcast 'http://hocusfoc.us/updates.xml',
          checkpoint: '3757afb32c1a6859edbfde3c09affd115a6e3742017787fea6dfd333a2114326'
  name 'Hocus Focus'
  homepage 'http://hocusfoc.us/'
  license :gratis

  app 'Hocus Focus.app'

  zap delete: [
                '~/Library/Caches/com.uglyapps.HocusFocus',
                '~/Library/Application Support/com.uglyapps.HocusFocus',
                '~/Library/Preferences/com.uglyapps.HocusFocus.plist',
              ]
end
