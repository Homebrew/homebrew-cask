cask :v1 => 'pixelmator' do
  version '3.3.2'
  sha256 '900c0f32e286c39263c3f9fe16b44d50ffb384ce2fb519d408793315bd15b880'

  url "http://pixelmator-download.s3.amazonaws.com/trial/Pixelmator.zip"
  name 'Pixelmator'
  homepage 'http://www.pixelmator.com/'
  license :closed

  app 'Pixelmator.app'
end
