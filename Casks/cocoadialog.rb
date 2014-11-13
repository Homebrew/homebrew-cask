cask :v1 => 'cocoadialog' do
  version '2.1.1'
  sha256 '7f721d221697381a51df6091153b0470ce09f4083d86bbb93446db88eac58827'

  url "https://github.com/downloads/mstratman/cocoadialog/CocoaDialog-#{version}.dmg"
  homepage 'http://mstratman.github.io/cocoadialog/'
  license :oss

  app 'CocoaDialog.app'
end
