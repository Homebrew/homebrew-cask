cask 'mitimgchecker' do
  version '1.0.0'
  sha256 '2b3056ff72aede7f90834f39bd72a0b2325fff0d490fb9e4fd1cfcd69cd0c74e'

  url "https://github.com/mitchell-dream/MitImgChecker/releases/download/#{version}/MitImgChecker.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom'
  name 'MitImgChecker'
  homepage 'https://github.com/mitchell-dream/MitImgChecker'

  depends_on macos: '>= :high_sierra'

  app 'MitImgChecker.app'
end
