cask 'phd2' do
  version '2.6.4'
  sha256 '8587830bdf5a947affe26b4a6e811ec6ea28a9575aa382288f9a63aae6fb0b24'

  url "https://openphdguiding.org/PHD2-#{version}-OSX.zip"
  name 'PHD2'
  homepage 'https://openphdguiding.org/'

  app 'PHD2.app'
end
