cask 'screaming-frog-seo-spider' do
  version '10.2'
  sha256 '6e950c09cbc8314cefb4f6c5b229aae2ab1b689b3cd03aa44fe61705be060e40'

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
