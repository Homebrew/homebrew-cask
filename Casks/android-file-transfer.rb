cask :v1 => 'android-file-transfer' do
  version :latest
  sha256 :no_check

  # google.com is the official download host per the vendor homepage
  url 'https://dl.google.com/dl/androidjumper/mtp/current/androidfiletransfer.dmg'
  name 'Android File Transfer'
  homepage 'https://www.android.com/filetransfer/'
  license :gratis

  app 'Android File Transfer.app'

  zap :delete => '~/Library/Application Support/Google/Android File Transfer',
      :rmdir  => '~/Library/Application Support/Google/'
end
