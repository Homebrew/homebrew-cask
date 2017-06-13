cask 'phd2' do
  version '2.6.3'
  sha256 '38786ff7715e0d0195c8b27431b8d9a005de64ab122167750d43cbee3228c27b'

  url "https://openphdguiding.org/PHD2-#{version}-OSX.zip"
  name 'PHD2'
  homepage 'https://openphdguiding.org/'

  app 'PHD2.app'
end
