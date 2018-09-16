cask 'archi' do
  version '4.3'
  sha256 '37a85ef876943e9956518bb14d3e869acfe86b94070cba1ee5c203a76d0eb44f'

  url "https://www.archimatetool.com/downloads/root#{version.no_dots}/Archi-Mac-#{version}.zip",
      user_agent: :fake,
      referer: 'https://www.archimatetool.com/download/'
  appcast 'https://github.com/archimatetool/archi/releases.atom'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
