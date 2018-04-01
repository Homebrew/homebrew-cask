cask 'cloudy' do
  version '1.2'
  sha256 'e74fa160ec76c340fabdd1b9d1e8ece637c77e654fab1ba263bb47aed6d566f7'

  url 'https://github.com/calebd/cloudy/releases/download/v5/Cloudy.zip'
  appcast 'https://github.com/calebd/cloudy/releases.atom',
          checkpoint: '613e2382baff34c0207ce1d52c0c37646de3173512c9fe6e42d9e7c1fbeb23fd'
  name 'Cloudy'
  homepage 'https://github.com/calebd/cloudy'

  app 'Cloudy.app'
end
