cask 'darwindumper' do
  version '3.0.3'
  sha256 '15eca11d9c03c4af0ceb335efb844db02eb1a5ad1ce85691ec6ea7c6c30c7148'

  url "https://bitbucket.org/blackosx/darwindumper/downloads/DarwinDumper_v#{version}.zip"
  appcast 'https://bitbucket.org/blackosx/darwindumper/wiki/DD_AppCast.xml',
          checkpoint: 'c3da1e92be8ac71baabd3714c7758479684b59ead90adca0688522720f5bbc89'
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
