cask :v1 => 'propane' do
  version :latest
  sha256 :no_check

  url 'https://propaneapp.com/appcast/Propane.zip'
  appcast 'http://propaneapp.com/appcast/release.xml'
  homepage 'http://propaneapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Propane.app'
end
