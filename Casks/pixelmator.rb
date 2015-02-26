cask :v1 => 'pixelmator' do
  version :latest
  sha256 :no_check

  url 'https://pixelmator-download.s3.amazonaws.com/trial/Pixelmator.zip'
  name 'Pixelmator'
  homepage 'http://www.pixelmator.com/'
  license :unknown

  app 'Pixelmator.app'
end
