cask 'gambit' do
  version '4.8.9'
  sha256 'dd9945149dbf57930f01cc1b49848b9e37d38fd09ba9b9b2d74985f31f3e6c6c'

  # iro.umontreal.ca/~gambit/download/gambit was verified as official when first introduced to the cask
  url "https://www.iro.umontreal.ca/~gambit/download/gambit/v#{version.major_minor}/prebuilt/gambit-v#{version.dots_to_underscores}-macosx-intel64.dmg"
  appcast 'https://github.com/gambit/gambit/releases.atom',
          checkpoint: 'bea4e240e07be723439ba5a9ad7f246d4e3aadac6a574bc81670e760d47e0892'
  name 'Gambit'
  homepage 'http://gambitscheme.org/'

  pkg "gambit-v#{version.dots_to_underscores}-macosx-intel64.pkg"

  uninstall pkgutil: 'marc.feeley.gambit',
            script:  {
                       executable: "/Library/Gambit/v#{version}/bin/uninstall-gambit",
                       args:       ["v#{version}"],
                       sudo:       true,
                     }

  zap trash: '~/.gambit_history'
end
