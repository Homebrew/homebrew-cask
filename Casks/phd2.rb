cask 'phd2' do
  version '2.4.1'
  sha256 'db2d0d7d6e8d2b81c2f0247c8bea7ee08e3c1fce96ba8196d4c6a810183a0cc8'

  url "http://openphdguiding.org/PHD2-v#{version}-OSX.zip"
  name 'PHD2'
  homepage 'https://openphdguiding.org/'

  app 'PHD2.app'
end
