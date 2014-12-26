cask :v1 => 'android-file-transfer' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/androidjumper/mtp/current/androidfiletransfer.dmg'
  homepage 'http://www.android.com/filetransfer/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Android File Transfer.app'

  zap :delete => '~/Library/Application Support/Google/Android File Transfer',
      :rmdir  => '~/Library/Application Support/Google/'
end
