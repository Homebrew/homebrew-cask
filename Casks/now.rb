cask 'now' do
  version :latest
  sha256 :no_check

  # now-auto-updates.now.sh was verified as official when first introduced to the cask
  url 'https://now-auto-updates.now.sh/download/macos'
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: '2fdd5ed203f96a0d7c81f0c6694d2604dae52baf732dbf2a8f2aa1f2826d7761'
  name 'Now'
  homepage 'https://zeit.co/now'

  auto_updates true

  app 'Now.app'
end
