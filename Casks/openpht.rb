cask 'openpht' do
  version '1.6.2.123-e23a7eef'
  sha256 '40b8e7e987d6a5551b4a8956afc37c06a9f67e30b2631305b4c658b3ae9403a8'

  url "https://github.com/RasPlex/OpenPHT/releases/download/v#{version}/OpenPHT-#{version}-macosx-x86_64.zip"
  appcast 'https://github.com/RasPlex/OpenPHT/releases.atom',
          checkpoint: '209f89a2f9b9ae847e1ae60f21d58a974c114ce166fa4adfb935b4dc01097b2e'
  name 'OpenPHT'
  homepage 'https://github.com/RasPlex/OpenPHT'

  app 'OpenPHT.app'
end
