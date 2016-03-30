cask 'logmein-hamachi' do
  version :latest
  sha256 :no_check

  # logmein.com is the official download host per the vendor homepage
  url 'https://secure.logmein.com/LogMeInHamachi.zip'
  name 'LogMeIn Hamachi'
  homepage 'https://vpn.net'
  license :freemium

  installer script: 'LogMeInHamachiInstaller.app/Contents/MacOS/Lili',
            args:   ['-s']

  uninstall script: '/Applications/LogMeIn Hamachi/HamachiUninstaller.app/Contents/Resources/uninstaller.sh'
end
