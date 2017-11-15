cask 'freedom' do
  version '1.6.1'
  sha256 '12218708cc872843d3141e87545bc4d542a9bd9d7f389b40bdf1ae818be406ed'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: 'e13616eee2bb85bc159a36d025ed0301e66a527646429f04ccab4be65566154c'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
