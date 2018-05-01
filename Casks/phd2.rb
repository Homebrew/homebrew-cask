cask 'phd2' do
  version '2.6.5'
  sha256 '3679245f127b136523d6d28f921971974e304f95397e19ebc4718e1e5554f87d'

  url "https://openphdguiding.org/PHD2-#{version}-OSX.zip"
  name 'PHD2'
  homepage 'https://openphdguiding.org/'

  app 'PHD2.app'
end
