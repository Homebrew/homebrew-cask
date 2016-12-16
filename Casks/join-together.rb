cask 'join-together' do
  version '7.6.3'
  sha256 '289ea8f26ce255544eae8062945c70e1c5538c2270c85f25e713e160c02e0421'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: '6a6864455095cd2df5928237155c541e2e2443816b3b919f896569e7fd08aafd'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end
