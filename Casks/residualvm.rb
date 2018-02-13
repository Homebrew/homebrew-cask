cask 'residualvm' do
  version '0.3.0'
  sha256 '35d4273ead8fef00bc8a1b3f974eebddf31c1934f41390379c66ca2e4a3885a1'

  url "http://www.residualvm.org/downloads/release/#{version}/residualvm-#{version}-macosx-intel.dmg"
  name 'ResidualVM'
  homepage 'http://www.residualvm.org/'

  depends_on macos: '>= :high_sierra'

  app 'ResidualVM.app'
end
