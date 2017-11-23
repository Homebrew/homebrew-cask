cask 'freedom' do
  version '1.6.2'
  sha256 'b05a0abc4cf1f3bb9a9d433d19c722123c04f63a47ef5e0a91a6299bfd2a8b0c'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: 'd9aafc9cbac539ef8143e3ce4178243e1b0c0445f2deec7061b3f1b4d1b0be3c'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
