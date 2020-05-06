cask 'front' do
  version '3.20.21'
  sha256 '81680f4b27171e9a3e6bf9f7f9db9972a34931e0b92ab702c4f168e978d98631'

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  appcast 'https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml'
  name 'Front'
  homepage 'https://frontapp.com/'

  app 'Front.app'
end
