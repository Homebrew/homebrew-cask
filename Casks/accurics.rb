cask 'accurics' do
  version '0.0.4'
  sha256 '74f0f00ac9f8f4ad47f5dcb81eaabad1587eedf458d41ec5d91d54490376b0ae'

  url "http://downloads.accurics.com/cli/#{version}/accurics-cli.dmg"
  appcast "http://downloads.accurics.com/cli/#{version}/accurics-cli.yml",
          configuration: version
  name 'Accurics CLI'
  homepage 'https://www.accurics.com/'

  binary 'accurics'

  zap trash: '~/.accurics/'
end
