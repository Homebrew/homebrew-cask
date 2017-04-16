cask :v1 => 'cubicsdr' do
  version '0.1.1-beta'
  sha256 'aa84fec32873f8c048de0d3fcfaee846887bfd43d41436da451d0e3468d2fabb'

  url 'https://github.com/cjcliffe/CubicSDR/releases/download/v0.1.1/CubicSDR-0.1.1-Darwin.dmg'
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'
  license :gpl

  app 'CubicSDR.app'
end
