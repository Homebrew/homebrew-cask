cask 'freedom' do
  version '1.6.7'
  sha256 '3e5a562ede0eb4762d67ad50f6bf29e769ddb63d1e7af001a72c6ac8be29324a'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: 'f9ef5a99ec37278c9077ba8cd165ab403a123cded6ba6a5e284ea7430fc05787'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
