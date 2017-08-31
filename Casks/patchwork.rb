cask 'patchwork' do
  version '3.6.6'
  sha256 'da627845e0b7978f9dd86f990d411f7be3586cc267ea0273e274b19cbdd30702'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: '8cdc768452e1fcfc21628ffd6a7a3992084316e5a351f665716564f58db13c6b'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
