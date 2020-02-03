cask 'screaming-frog-seo-spider' do
  version '12.5'
  sha256 '6d0d22ffd9cde9b1a117489c9ae6b95d554229bb7c187cdc723d9a0692c9bb38'

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast 'https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php'
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java '7+'
  end
end
