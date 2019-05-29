cask 'gambit' do
  version '4.9.0'
  sha256 '5460974327f2ca573f8bcd533f568f85a28c7c6c0205463947871de8f10af143'

  # iro.umontreal.ca/~gambit/download/gambit was verified as official when first introduced to the cask
  url "https://www.iro.umontreal.ca/~gambit/download/gambit/v#{version.major_minor}/prebuilt/gambit-v#{version.dots_to_underscores}-macosx-intel64.dmg"
  appcast 'https://github.com/gambit/gambit/releases.atom'
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
