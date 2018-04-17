cask 'geneious' do
  version '11.0.3'
  sha256 '3081659f25dc9686bf390dab5bbb46f8a8e18ec7b5614f4773206cf06ba52cf4'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name 'Geneious'
  homepage 'https://www.geneious.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Geneious.app'
end
