cask 'screaming-frog-seo-spider' do
  version '12.2'
  sha256 'dcfd0bcedaed5a2fbfb3e5c1f96888bc9b55f19999f6fbb3cf33e498bdbb8bbc'

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast 'https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php'
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java '7+'
  end
end
