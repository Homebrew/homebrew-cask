cask 'manuscripts' do
  version :latest
  sha256 :no_check

  url 'https://updates.manuscriptsapp.com/apps/manuscripts/production/download'
  name 'Manuscripts'
  homepage 'http://www.manuscriptsapp.com'
  license :freemium

  app 'Manuscripts.app'
end
