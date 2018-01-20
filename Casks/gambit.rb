cask 'gambit' do
  version '4.8.8'
  sha256 'ab1769355391752c3700b61292b726116ec14f5b24a861139e50b43df17ff64e'

  # iro.umontreal.ca/~gambit/download/gambit was verified as official when first introduced to the cask
  url "https://www.iro.umontreal.ca/~gambit/download/gambit/v#{version.major_minor}/prebuilt/gambit-v#{version.dots_to_underscores}-macosx-intel64.dmg"
  appcast 'https://github.com/gambit/gambit/releases.atom',
          checkpoint: '640c113048c260672eba4dd7d8675dcb386ee2cd6c701e313b218f4fb834b53b'
  name 'Gambit'
  homepage 'http://gambitscheme.org/'

  pkg "gambit-v#{version.dots_to_underscores}-macosx-intel64.pkg"

  uninstall pkgutil: 'marc.feeley.gambc',
            script:  {
                       executable: "/Library/Gambit/v#{version}/bin/uninstall-gambit",
                       args:       ["v#{version}"],
                       sudo:       true,
                     }

  zap trash: '~/.gambit_history'
end
