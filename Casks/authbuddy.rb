cask 'authbuddy' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/authbuddy/dsswauthbuddy.dmg'
  name 'authbuddy'
  homepage 'https://www.dssw.co.uk/authbuddy'
  license :gratis

  pkg 'DssW authbuddy.pkg'

  uninstall pkgutil: 'uk.co.dssw.authbuddy'

  caveats do
    files_in_usr_local
  end
end
