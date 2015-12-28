cask 'beardedspice' do
  version '1.2.3'
  sha256 'dd2bed9071fc54debee3f3137829e690c1f1e5dc8581283b299e9f4172489c2e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          :sha256 => '506993fb1eae07aa873bea676aba8eea37d37e36be2900a96ea9b02a0c475305'
  name 'BeardedSpice'
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
