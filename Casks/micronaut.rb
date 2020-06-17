cask 'micronaut' do
  version '2.0.0.RC1'
  sha256 '6fa474cf8d5b5bcb1d0f91c79bb784ed606027454b644a92c75834f30a47736e'

  # github.com/micronaut-projects/micronaut-starter was verified as official when first introduced to the cask
  url "https://github.com/micronaut-projects/micronaut-starter/releases/download/v#{version}/mn-darwin-amd64-v#{version}.zip"
  appcast 'https://github.com/micronaut-projects/micronaut-starter/releases.atom'
  name 'Micronaut'
  homepage 'https://micronaut.io/'

  depends_on formula: 'openjdk'

  binary "mn-darwin-amd64-v#{version}/bin/mn"
end
