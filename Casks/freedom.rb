cask 'freedom' do
  version '1.5.2'
  sha256 '608c4532e7a0ad50a06dbc62d39dab85ee9716fba36373ffb73650a0d568a0f8'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '42890ef6127780322b5871d2f0f8eadc2aa5d5128bab34384dd003c599061409'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
