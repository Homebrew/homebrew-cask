cask 'powerword' do
  version '1.0.0'
  sha256 '8bee28fa52bc967f91f6700d9642e00fc5e275cc41e0c15e5bf288fcac537c07'

  url "http://mac.iciba.com/download/powerword_macosx_beta_#{version}.dmg"
  name 'Powerword'
  name '词霸'
  homepage 'http://mac.iciba.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '金山词霸.app'
end
