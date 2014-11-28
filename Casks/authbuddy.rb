cask :v1 => 'authbuddy' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/authbuddy/dsswauthbuddy.dmg'
  homepage 'https://www.dssw.co.uk/authbuddy'
  license :unknown

  pkg 'DssW authbuddy.pkg'

  uninstall :pkgutil => 'uk.co.dssw.authbuddy'
  caveats do
    files_in_usr_local
  end
end
