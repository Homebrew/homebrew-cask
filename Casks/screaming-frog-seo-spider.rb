cask 'screaming-frog-seo-spider' do
  if MacOS.release <= :lion
    version '2.40'
    sha256 'f37a517cb1ddb13a0621ae2ef98eba148027b3a2b5ce56b6e6b4ca756e40329b'
  else
    version '5.1'
    sha256 'bd4ccf73c8ee99e4da893a832bf85155820659cc5a61f72df33d39871fcc7b66'
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
