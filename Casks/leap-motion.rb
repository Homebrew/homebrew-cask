cask :v1 => 'leap-motion' do
  version '2.2.0'
  sha256 '712ab56cc97c1ceef1b6802f51634a5ec07dcac5a78497870f5a0544685e751e'

  url 'https://warehouse.leapmotion.com/apps/3791/download'
  homepage 'https://www.leapmotion.com/setup'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Leap Motion.pkg'

  uninstall :script => '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
