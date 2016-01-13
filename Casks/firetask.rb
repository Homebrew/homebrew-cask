cask 'firetask' do
  version '3.7.5'
  sha256 'fe8ca19270ce248dd78fdba0183ee2e9f6b69a889f8e6b66974f4ed8e3b81e8d'

  url "http://downloads.firetask.com/firetask-mac/Firetask-Mac-#{version}.zip"
  appcast 'http://www.firetask.com/firetask-mac/updates/firetask-mac.xml',
          :checkpoint => '7ca12cc0992bcf535bd81d841b08b0a1de6e7dfba934dbc018bcc8bf45fadad6'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app "Firetask-Mac-#{version}/Firetask.app"
end
