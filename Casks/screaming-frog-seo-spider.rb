cask 'screaming-frog-seo-spider' do
  if MacOS.version <= :lion
    version '2.40'
    sha256 'f37a517cb1ddb13a0621ae2ef98eba148027b3a2b5ce56b6e6b4ca756e40329b'
  else
    version '7.1'
    sha256 'ca9f3ef0287da969de9d35239773853fb8bca91418d61c27cf5cbb04a15601a4'
  end

  url "https://www.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java('7+')
  end
end
