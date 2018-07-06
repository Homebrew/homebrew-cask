cask 'screaming-frog-seo-spider' do
  version '9.4'
  sha256 'e9304e032ca241b11dcb5f3e8337838fa6cea2140cdd3ea5ff0ede9d320ed989'

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
