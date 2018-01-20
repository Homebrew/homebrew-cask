cask 'lima' do
  version '1.4.5'
  sha256 '57a83f9fa61658f27b0be07c5ab7c3795dba744f5f4212e2bb1319c6e9436182'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
