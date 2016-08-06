cask 'screaming-frog-seo-spider' do
  if MacOS.version <= :lion
    version '2.40'
    sha256 'f37a517cb1ddb13a0621ae2ef98eba148027b3a2b5ce56b6e6b4ca756e40329b'
  else
    version '6.1'
    sha256 'c5c1aa22d3074249f0285b72cb2e9196ffb0dbc462632433d5b323b6d907ab70'
  end

  url "https://www.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  name 'Screaming Frog SEO Spider'
  homepage 'http://www.screamingfrog.co.uk/seo-spider/'
  license :freemium

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java('7+')
  end
end
