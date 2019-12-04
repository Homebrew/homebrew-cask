cask 'fman' do
  version '1.6.8'
  sha256 '1620e19aaa9311bf8ee6f047fbc55558590a22e6c80b44315c74f89b8c7091e0'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
