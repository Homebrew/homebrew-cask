cask 'phd2' do
  version '2.6.6'
  sha256 '0f94d3c113f1c07405b1be356906bb415b987fddf97229723ae6226cacf9de85'

  url "https://openphdguiding.org/PHD2-#{version}-OSX.zip"
  name 'PHD2'
  homepage 'https://openphdguiding.org/'

  app 'PHD2.app'
end
