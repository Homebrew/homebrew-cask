cask :v1 => 'pullover' do
  version '0.3.2'
  sha256 'a4208c33c2fbc6bca96c08c9085d90fbd4caa484cc7d2206db0a456f975f0052'

  # sourceforge.net is the official download host per the vendor homepage
  url "https://downloads.sourceforge.net/sourceforge/pullover/Pullover_#{version}.dmg"
  name 'Pullover'
  homepage 'https://github.com/cgrossde/Pullover'
  license :gpl

  app 'pullover.app'
end
