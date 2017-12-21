cask 'darwindumper' do
  version '3.0.4'
  sha256 '29286070dd7f91d9289afa7fa7b52703252b255106934c8800b2db57edd3fa8b'

  url "https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v#{version}.zip"
  appcast 'https://bitbucket.org/blackosx/darwindumper/wiki/DD_AppCast.xml',
          checkpoint: '9b935c45c182f0e058c779240c6bd5388a9347b7824a749ecd0b8d41ecb34fdd'
  name 'DarwinDumper'
  homepage 'https://bitbucket.org/blackosx/darwindumper'

  app 'DarwinDumper.app'

  zap trash: [
               '~/Library/Caches/com.DarwinDumper',
               '~/Library/Preferences/com.DarwinDumper.plist',
               '~/Library/Preferences/org.tom.DarwinDumper.plist',
               '~/Library/Saved Application State/com.DarwinDumper.savedState',
             ]
end
