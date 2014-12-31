cask :v1 => 'gambit-c' do
  version '4.7.3'

  if Hardware::CPU.is_32_bit?
    sha256 '002ea1d272a4328a0448eab69e6256e104d888bc3c98133d072092457f842bbf'
    url "http://www.iro.umontreal.ca/~gambit/download/gambit/v4.7/prebuilt/gambc-v#{version.gsub('.', '_')}-macosx-intel32.dmg"
    pkg "gambc-v#{version.gsub('.', '_')}-macosx-intel32.pkg"
  else
    sha256 'bfdad5d4c5025b3ab21926554d870cb37a68607534b78912f81c62db29054a02'
    url "http://www.iro.umontreal.ca/~gambit/download/gambit/v4.7/prebuilt/gambc-v#{version.gsub('.', '_')}-macosx-intel64.dmg"
    pkg "gambc-v#{version.gsub('.', '_')}-macosx-intel64.pkg"
  end

  homepage 'http://gambitscheme.org/'
  license :apache

  uninstall :pkgutil => 'marc.feeley.gambc',
            :script => {
                        :executable => "/Library/Gambit-C/v#{version}/bin/uninstall-gambc",
                        :args => ["v#{version}"]
                       }
  zap       :delete => '~/.gambc_history'
end
