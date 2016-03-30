cask 'mactracker' do
  version '7.5.4'
  sha256 '23666160be9d43e3d2554c0804ceadaf8ddc5ed75e69f4e42d0e9caa0e85d010'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          checkpoint: '6519acbdfd68ab8f5beed78cb311d5c4b1f000eb13b64be2d60f27baaff6b902'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
