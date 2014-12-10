cask :v1 => 'android-file-transfer' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/androidjumper/mtp/current/androidfiletransfer.dmg'
  homepage 'http://www.android.com/filetransfer/'
  license :unknown    # todo: improve this machine-generated value

  app 'Android File Transfer.app'

  zap :delete => '~/Library/Application Support/Google/Android File Transfer',
      :rmdir  => '~/Library/Application Support/Google/'
end
