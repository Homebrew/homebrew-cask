cask 'macspice' do
  version '3.1.8'
  sha256 'bf93677e91ea00e9604a347611c70d13312ccf479b42d215cce530e50e979082'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          :sha256 => '79d1e2a5a03f4bf6cbf99da2055d762f9607579a40db686f9e283993d3569a70'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
