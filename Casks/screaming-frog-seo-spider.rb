cask 'screaming-frog-seo-spider' do
  version '12.1'
  sha256 '5d1577b8e5c9ae8a0e476eec26dcef39b992f7a29c1585321f6cdab4cf3142f8'

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast 'https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php'
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java '7+'
  end
end
