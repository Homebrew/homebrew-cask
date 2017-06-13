cask 'cocoadialog' do
  version '2.1.1'
  sha256 '7f721d221697381a51df6091153b0470ce09f4083d86bbb93446db88eac58827'

  # github.com/downloads/mstratman/cocoadialog was verified as official when first introduced to the cask
  url "https://github.com/downloads/mstratman/cocoadialog/CocoaDialog-#{version}.dmg"
  appcast 'https://github.com/mstratman/cocoadialog/releases.atom',
          checkpoint: '7144c245f8616fcadd57144910fec921871a3af7478fe4b62eab9f5f89501aeb'
  name 'cocoaDialog'
  homepage 'https://mstratman.github.io/cocoadialog/'

  app 'CocoaDialog.app'
end
