cask "screaming-frog-seo-spider" do
  version "14.0"
  sha256 "0043c0b2021fdc0e936f4a77ef886da02dc8bc07b51d7b925397be00a0b0328e"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast "https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php"
  name "Screaming Frog SEO Spider"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  app "Screaming Frog SEO Spider.app"

  caveats do
    depends_on_java "7+"
  end
end
