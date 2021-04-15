cask "screaming-frog-seo-spider" do
  version "15.1"
  sha256 "6da4dd294c1879789ad097d3ea60dcda070b0fbce7db56cd19c38457b58c9963"

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
