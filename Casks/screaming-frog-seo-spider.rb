cask :v1 => 'screaming-frog-seo-spider' do
  if MacOS.release <= :lion
    version '2.40'
    sha256 'f37a517cb1ddb13a0621ae2ef98eba148027b3a2b5ce56b6e6b4ca756e40329b'
  else
    version '4.1'
    sha256 '6594f7792f04651f37dd55c2e7926649c4f27efc43e158b86f0f308ac81ee063'
  end

  url "https://www.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  name 'Screaming Frog SEO Spider'
  name 'Screaming Frog'
  homepage 'http://www.screamingfrog.co.uk/seo-spider/'
  license :freemium

  app 'Screaming Frog SEO Spider.app'

  caveats <<-EOS.undent
    #{token} requires Java 7+, you can install the latest Java using
      brew cask install java
  EOS
end
