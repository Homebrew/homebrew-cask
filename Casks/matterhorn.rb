cask 'matterhorn' do
  version '50200.6.0'
  sha256 '773fed52878e901bfac2998048336c51cb2f406b62c7e6ea7f1f5d30616b0e33'

  url "https://github.com/matterhorn-chat/matterhorn/releases/download/#{version}/matterhorn-#{version}-Darwin-x86_64.tar.bz2"
  appcast 'https://github.com/matterhorn-chat/matterhorn/releases.atom'
  name 'Matterhorn'
  homepage 'https://github.com/matterhorn-chat/matterhorn'

  binary "matterhorn-#{version}-Darwin-x86_64/matterhorn"
end
