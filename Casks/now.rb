cask 'now' do
  version :latest
  sha256 :no_check

  # now-auto-updates.now.sh was verified as official when first introduced to the cask
  url 'https://now-auto-updates.now.sh/download/macos'
  name 'Now'
  homepage 'https://zeit.co/now'

  auto_updates true

  app 'Now.app'
end
