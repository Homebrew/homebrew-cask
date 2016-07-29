cask 'cloudy' do
  version '1.2'
  sha256 'e74fa160ec76c340fabdd1b9d1e8ece637c77e654fab1ba263bb47aed6d566f7'

  url 'https://github.com/calebd/cloudy/releases/download/v5/Cloudy.zip'
  appcast 'https://github.com/calebd/cloudy/releases.atom',
          checkpoint: 'e4dabdd103758cca09814f6d68675e887c6775390e18d334e221fceb0a362818'
  name 'Cloudy'
  homepage 'https://github.com/calebd/cloudy'
  license :mit

  app 'Cloudy.app'
end
