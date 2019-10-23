cask 'screaming-frog-seo-spider' do
  version '12.0'
  sha256 'f22c9575b21c2561fca84144473eb89f50aa155f2fe9ecd7f54bb2f2bd592bd6'

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast 'https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php'
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java '7+'
  end
end
