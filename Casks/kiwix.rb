cask 'kiwix' do
  version '0.9'
  sha256 '98e677aee3c106c6ec5b16791d3be7c22274b3b32cc44a9cce1eeca6275b7bcc'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/kiwix/#{version}/kiwix-#{version}.dmg"
  name 'Kiwix'
  homepage 'http://www.kiwix.org'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Kiwix.app'
end
