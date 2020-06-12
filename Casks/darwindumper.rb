cask 'darwindumper' do
  version '3.1.0'
  sha256 '0cf0807b3c1e9bb8df1c8563271e48db84e50f06572506954e32b360f005728c'

  url "https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v#{version}.zip"
  appcast 'https://bitbucket.org/blackosx/darwindumper/wiki/DD_AppCast.xml'
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
