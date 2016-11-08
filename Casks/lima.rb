cask 'lima' do
  version '1.2.2'
  sha256 '89fec2a821f32530a190648ab97e133ee52f42b2b5e90f72f2b55622dacf54a0'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
