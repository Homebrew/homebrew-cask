cask 'idagio' do
  version '0.0.99'
  sha256 'c07252dcfee889ccca4bbfdede35a64b0d6f3bbbc2a881ee6811f71446db2b3f'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
