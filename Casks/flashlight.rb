cask :v1 => 'flashlight' do
  version :latest
  sha256 :no_check

  # appspot.com is the official download host for the latest version, per the developer
  # Original discussion: https://github.com/nate-parrott/Flashlight/issues/104
  url 'https://flashlightplugins.appspot.com/latest_download'
  homepage 'http://flashlight.nateparrott.com/'
  license :gpl

  app 'Flashlight.app'
end
