cask 'sherlock' do
  version '1.7.5'
  sha256 'd73e08704081b4b87c89a84eaa9deff4b303c2746a76b1fe56000cc1c90a34da'

  # appcenter-filemanagement-distrib2ede6f06e.azureedge.net was verified as official when first introduced to the cask
  url "https://appcenter-filemanagement-distrib2ede6f06e.azureedge.net/4dc86610-6f44-402a-9bdd-1cee62345b9b/Sherlock%20#{version}.dmg?sv=2018-03-28&sr=c&sig=teQSveyZ6XhkRCAq6CkDxb42YQYWT72P6BtvCilRdPQ%3D&se=2020-03-25T14%3A50%3A22Z&sp=r"
  appcast 'http://sparkle.sherlock.inspiredcode.io'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
