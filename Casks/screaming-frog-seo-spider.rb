cask "screaming-frog-seo-spider" do
  version "13.2"
  sha256 "0afd1df95a5aeabe346d839b53d80c2f5ea967192da098b0dff16cbfe8aa013d"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  appcast "https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php"
  name "Screaming Frog SEO Spider"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  app "Screaming Frog SEO Spider.app"

  caveats do
    depends_on_java "7+"
  end
end
