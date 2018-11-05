cask 'screaming-frog-seo-spider' do
  version '10.3'
  sha256 '98381299844ddc5c81dd756ab4ae9ffc2667704e112dc3ef59b457326ca26a60'

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast 'https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php'
  name 'Screaming Frog SEO Spider'
  homepage 'https://www.screamingfrog.co.uk/seo-spider/'

  depends_on macos: '>= :mountain_lion'

  app 'Screaming Frog SEO Spider.app'

  caveats do
    depends_on_java '7+'
  end
end
