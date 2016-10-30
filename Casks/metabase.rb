cask 'metabase' do
  version '0.20.3.0'
  sha256 '45804c178bdf46e6c60f45c709bc5af8eb978571bf1a28c4b99168f57f91e2e6'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: 'c93852307774349a390d08f5f5d688aa7bbf40c90eaaccc3d91368678e33143a'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
