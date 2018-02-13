cask 'backwords' do
  version '1.0.0'
  sha256 '102d00e333ef1c77e483d179e2276005e46c1de418c7004f08eba29579888044'

  url "https://backwords.fyi/static/builds/backwords-#{version}.dmg"
  name 'Backwords'
  homepage 'https://backwords.fyi/'

  app 'Backwords.app'

  uninstall login_item: 'Backwords',
            signal:     [
                          ['TERM', 'com.backwords.app.helper'],
                          ['TERM', 'com.backwords.app'],
                        ]
end
