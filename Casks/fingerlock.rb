cask :v1 => 'fingerlock' do
  version :latest
  sha256 :no_check

  url 'http://www.fingerkeyapp.com/download/FingerLock.dmg'
  homepage 'http://www.fingerkeyapp.com/'
  license :unknown

  app 'FingerLock.app'
end
