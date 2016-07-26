cask 'screaming-frog-seo-spider' do
  if MacOS.release <= :lion
    version '2.40'
    sha256 'f37a517cb1ddb13a0621ae2ef98eba148027b3a2b5ce56b6e6b4ca756e40329b'
  else
    version '6.0'
    sha256 '843b0e38d09bc6e0057850e35cc5c9b17ee9a474b5d3de99429723ef0b06d8bb'
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
