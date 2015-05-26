cask :v1 => 'cubicsdr' do
  version '0.1.1'
  sha256 'aa84fec32873f8c048de0d3fcfaee846887bfd43d41436da451d0e3468d2fabb'

  url "https://github.com/cjcliffe/CubicSDR/releases/download/v#{version}/CubicSDR-#{version}-Darwin.dmg"
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'
  license :gpl

  app 'CubicSDR.app'
end
