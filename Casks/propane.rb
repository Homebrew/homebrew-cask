cask :v1 => 'propane' do
  version :latest
  sha256 :no_check

  url 'https://propaneapp.com/appcast/Propane.zip'
  appcast 'https://propaneapp.com/appcast/release.xml'
  name 'Propane'
  homepage 'https://propaneapp.com/'
  license :commercial

  app 'Propane.app'
end
