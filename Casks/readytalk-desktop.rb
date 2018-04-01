cask 'readytalk-desktop' do
  version :latest
  sha256 :no_check

  # callinfo.com was verified as official when first introduced to the cask
  url 'https://core.callinfo.com/packages/runtime/rtd-readytalk/darwin-x86_64/setup.dmg'
  name 'ReadyTalk Desktop'
  homepage 'https://www.readytalk.com/products-services/integrations/productivity/readytalk-desktop'

  app 'ReadyTalk Desktop.app'
end
