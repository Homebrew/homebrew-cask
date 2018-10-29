cask 'freedom' do
  version '2.0'
  sha256 'ff21b0fd30ad9cb61a2d522882312aa143e8688b9efcf33c5a82b4f4f863976b'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
