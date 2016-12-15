cask 'mattermost' do
  version '3.5.0'
  sha256 'fb5d843fadef0dc2a18f95049951d21f09d5c822f8664bb8995507094f942f6c'

  # releases.mattermost.com was verified as official when first introduced to the cask
  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-osx.tar.gz"
  appcast 'https://github.com/mattermost/desktop/releases.atom',
          checkpoint: '9e1033d791d7bcb6de41b302229fb8c867aa527700323c988e24acc594fa89d1'
  name 'Mattermost'
  homepage 'https://about.mattermost.org/'

  app 'Mattermost.app'
end
