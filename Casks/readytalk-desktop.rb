cask 'readytalk-desktop' do
  version :latest
  sha256 :no_check

  url 'https://core.callinfo.com/packages/runtime/rtd-readytalk/darwin-x86_64/setup.dmg'
  name 'ReadyTalk Desktop'
  homepage 'https://www.readytalk.com/products-services/integrations/productivity/readytalk-desktop'
  license :gratis

  app 'ReadyTalk Desktop.app'
end
