cask :v1 => 'pivotalbooster' do
  version '1.1.4.beta'
  sha256 'c32ca0eecd595340f255485ec6cff0c975d3549c2db58b3ddc7b736922a5e159'

  url "http://pivotalbooster.com/downloads/releases/#{version}/PivotalBooster_#{version}.dmg"
  homepage 'http://pivotalbooster.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'PivotalBooster.app'
end
