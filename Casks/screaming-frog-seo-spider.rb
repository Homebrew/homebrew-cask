cask 'screaming-frog-seo-spider' do
  version '12.4'
  sha256 '0a00bb6fca07687a5d61d98f8cbbe394378c7cea22515d33a7aab68f3db059d2'

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast 'https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php'
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java '7+'
  end
end
