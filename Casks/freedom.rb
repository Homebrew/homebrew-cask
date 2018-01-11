cask 'freedom' do
  version '1.6.3'
  sha256 'c8ec3d6239cd05c77b474335f1acf8b0f9d77ed97b012e6c40b95c85deb25af6'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '302c865343d9213953e72df19d7e768d37da05aef435d57c1a8991f7ec1af22f'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
