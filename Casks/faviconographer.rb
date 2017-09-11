cask 'faviconographer' do
  version '1.0'
  sha256 '42251e3d8b766e2c561dcb511b98ff64f4ee635d8fcea06b34f713f3a59cced7'

  url "https://faviconographer.com/download/Faviconographer-#{version}.dmg"
  appcast 'https://faviconographer.com/updates/faviconographer.xml',
          checkpoint: 'e7ba2b7b39e59c1d11dd19eca92cfe02b70254e94eec3e001ce6757d57c8d78b'
  name 'Faviconographer'
  homepage 'https://faviconographer.com/'

  app 'Faviconographer.app'
end
