cask "screaming-frog-seo-spider" do
  version "16.1"
  sha256 "4b3672c1d47f8a08363eec9996c00e38bd96ac2fa7f79fe2e1d4972115520af8"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  name "Screaming Frog SEO Spider"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url "https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php"
    strategy :page_match
    regex(%r{href=.*?/ScreamingFrogSEOSpider-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Screaming Frog SEO Spider.app"

  caveats do
    depends_on_java "7+"
  end
end
