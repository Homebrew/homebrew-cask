cask 'lima' do
  version '1.3.0'
  sha256 'f9b96b68f42f01a1ec61313bf951b81881668087672391d6ede6a9a12c1eee40'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
