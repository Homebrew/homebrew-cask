cask 'matterhorn' do
  version '50200.9.0'
  sha256 '5433f2ba56941b2ee7b6fe103d0545ff6355a2e601caba57640a106232266c28'

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  appcast 'https://github.com/matterhorn-chat/matterhorn/releases.atom'
  name 'Matterhorn'
  homepage 'https://github.com/matterhorn-chat/matterhorn'

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
