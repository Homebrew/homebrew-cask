cask 'inkdrop' do
  version '0.11.0'
  sha256 '23b47aa14a6531b3daf1ce96244b88255e43627a9b450b84220e1bfb70f095f5'

  url "https://www.inkdrop.info/api/update/Inkdrop-#{version}-Mac.zip"
  name 'Inkdrop'
  homepage 'https://www.inkdrop.info'

  app 'Inkdrop (Beta).app'
end
