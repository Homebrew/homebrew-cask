cask :v1 => 'flashlight' do
  version :latest
  sha256 :no_check

  url "https://flashlightplugins.appspot.com/latest_download"
  homepage 'http://flashlight.nateparrott.com/'
  license :gpl

  app 'Flashlight.app'
end
