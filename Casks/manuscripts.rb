cask :v1 => 'manuscripts' do
  version :latest
  sha256 :no_check

  url 'http://updates.manuscriptsapp.com/apps/manuscripts/production/download'
  name 'Manuscripts'
  homepage 'http://www.manuscriptsapp.com'
  license :freemium

  app 'Manuscripts.app'
end
