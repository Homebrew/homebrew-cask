cask 'accurics-cli' do
  version '0.0.3'
  sha256 'b0d1ec5975ae3717f48657a57c07cbf0f606cccf00b879fb9236567f6f63213d'

  url 'http://downloads.accurics.com/cli/accurics-cli.dmg'
  appcast 'http://downloads.accurics.com/cli/accurics-cli.yml',
          configuration: version
  name 'Accurics CLI'
  homepage 'https://www.accurics.com/'

  binary 'accurics-cli'

  zap trash: '~/.accurics-cli/'
end
