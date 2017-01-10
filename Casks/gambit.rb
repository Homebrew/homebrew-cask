cask 'gambit' do
  version '4.8.7'
  sha256 '41b2180faffe0efd46b2a539ef60575cd1798472e0365aa845ef652d64196463'

  # iro.umontreal.ca/~gambit was verified as official when first introduced to the cask
  url "https://www.iro.umontreal.ca/~gambit/download/gambit/v#{version.major_minor}/prebuilt/gambit-v#{version.dots_to_underscores}-macosx-intel64.dmg"
  appcast 'https://github.com/gambit/gambit/releases.atom',
          checkpoint: 'fa3518baa36b2e35637909b329d8f37915adc557b82e29a12fa0b7cd69075034'
  name 'Gambit'
  homepage 'http://gambitscheme.org/'

  pkg "gambit-v#{version.dots_to_underscores}-macosx-intel64.pkg"

  uninstall pkgutil: 'marc.feeley.gambc',
            script:  {
                       executable: "/Library/Gambit/v#{version}/bin/uninstall-gambit",
                       args:       ["v#{version}"],
                     }

  zap       delete: '~/.gambit_history'
end
