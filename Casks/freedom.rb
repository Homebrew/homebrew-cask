cask 'freedom' do
  version '2.2'
  sha256 '515b6a98996e683b507dda7ed5b1acdefd07c301f13161b7e2984ce50307aef6'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
