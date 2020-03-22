cask 'parsec' do
  version :latest
  sha256 :no_check

  # s3.dualstack.us-east-1.amazonaws.com/parsec-build was verified as official when first introduced to the cask
  url 'https://s3.dualstack.us-east-1.amazonaws.com/parsec-build/package/parsec-macos.pkg'
  name 'Parsec'
  homepage 'https://parsecgaming.com/'

  pkg 'parsec-macos.pkg'

  postflight do
    set_ownership '~/.parsec'
    system 'diskutil info / | grep -i \'case\\-sensitive\' &> /dev/null && ' \
           'sudo ln -s /Applications/Parsec.app/Contents/Macos /Applications/Parsec.app/Contents/MacOS'
  end

  uninstall pkgutil: 'tv.parsec.www'
end
