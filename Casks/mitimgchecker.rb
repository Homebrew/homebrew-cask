cask 'mitimgchecker' do
  version '1.0.0'
  sha256 '2b3056ff72aede7f90834f39bd72a0b2325fff0d490fb9e4fd1cfcd69cd0c74e'
  appcast 'https://github.com/mitchell-dream/MitImgChecker/releases.atom'
  url "https://github.com/mitchell-dream/MitImgChecker/releases/download/1.0.0/MitImgChecker.dmg"
  name 'MitImgChecker'
  homepage 'https://github.com/mitchell-dream/MitImgChecker'
  app 'MitImgChecker.app'
end
