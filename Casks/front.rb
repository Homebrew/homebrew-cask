cask :v1 => 'front' do
  version :latest
  sha256 :no_check

  url 'http://dl.frontapp.com/front-latest.zip'
  homepage 'https://frontapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Front.app'
end
