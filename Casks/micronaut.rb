cask 'micronaut' do
  version '2.0.0.M3'
  sha256 '15a748072060263c0eee2b2bb808c3eed75516066542fcd2d1bccb39ae3e64e5'

  # github.com/micronaut-projects/micronaut-starter was verified as official when first introduced to the cask
  url "https://github.com/micronaut-projects/micronaut-starter/releases/download/v#{version}/mn-darwin-amd64-v#{version}.zip"
  appcast 'https://github.com/micronaut-projects/micronaut-starter/releases.atom'
  name 'Micronaut'
  homepage 'https://micronaut.io/'

  depends_on formula: 'openjdk'

  binary "mn-darwin-amd64-v#{version}/bin/mn"
end
