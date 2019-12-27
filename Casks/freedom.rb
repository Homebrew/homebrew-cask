cask 'freedom' do
  version '2.2.7'
  sha256 '8bc94808f9623755fe81ddf93af1f90e18f32036ddf04463f31765a07316ec71'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
