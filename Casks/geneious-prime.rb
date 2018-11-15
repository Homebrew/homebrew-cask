cask 'geneious-prime' do
  version '2019.0.3'
  sha256 '73c65f63620fd3766a290becc7910d03e46184641b4b03529288fae968980b1b'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Geneious Prime.app'
end
