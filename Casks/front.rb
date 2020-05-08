cask 'front' do
  version '3.21.7'
  sha256 '9089e1faf406e94bc7da27579b994d12681e9ed2ffd937c631282c7f22d72917'

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  appcast 'https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml'
  name 'Front'
  homepage 'https://frontapp.com/'

  app 'Front.app'
end
