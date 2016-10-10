cask 'coccinellida' do
  version '0.7'
  sha256 '9eb8376fa3764e406433aff969fb5aa9f8ba78886948d013ea690cf979baaf88'

  url "https://downloads.sourceforge.net/coccinellida/Coccinellida-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/troydm/coccinellida/master/sparkle.xml',
          checkpoint: '1e698171f549f46d602c94c37a07fc8862c24c30849a793c15e29ce9bb19f8fb'
  name 'Coccinellida'
  homepage 'http://coccinellida.sourceforge.net/'

  app 'Coccinellida.app'
end
