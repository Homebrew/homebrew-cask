cask 'docker' do
  version '1.12.0.11213'
  sha256 'c6ec6c637efa347427e86168c8d963deb5770b1d67a99f64096c1554b635bd8b'

  url "https://download.docker.com/mac/stable/#{version}/Docker.dmg"
  appcast 'https://download.docker.com/mac/stable/appcast.xml',
          checkpoint: '0fb1705e17e1946681c0ac6f2ebe60ae8316990dacff8822ade2fd95153a7a09'
  name 'Docker for Mac'
  homepage 'https://www.docker.com/products/docker'
  license :mit

  auto_updates true

  app 'Docker.app'
end
