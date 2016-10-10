cask 'gambit-c' do
  version '4.7.3'
  sha256 'bfdad5d4c5025b3ab21926554d870cb37a68607534b78912f81c62db29054a02'

  # iro.umontreal.ca/~gambit was verified as official when first introduced to the cask
  url "https://www.iro.umontreal.ca/~gambit/download/gambit/v4.7/prebuilt/gambc-v#{version.dots_to_underscores}-macosx-intel64.dmg"
  name 'Gambit-C'
  homepage 'http://gambitscheme.org/'

  pkg "gambc-v#{version.dots_to_underscores}-macosx-intel64.pkg"

  uninstall pkgutil: 'marc.feeley.gambc',
            script:  {
                       executable: "/Library/Gambit-C/v#{version}/bin/uninstall-gambc",
                       args:       ["v#{version}"],
                     }

  zap       delete: '~/.gambc_history'
end
