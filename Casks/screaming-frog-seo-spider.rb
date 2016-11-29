cask 'screaming-frog-seo-spider' do
  if MacOS.version <= :lion
    version '2.40'
    sha256 'f37a517cb1ddb13a0621ae2ef98eba148027b3a2b5ce56b6e6b4ca756e40329b'
  else
    version '6.1'
    sha256 '4ac1924c2be29bac37b730ba0a406e7d5367a07a72e2dfc9f0ac02b7db879b06'
  end

  url "https://www.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java('7+')
  end
end
