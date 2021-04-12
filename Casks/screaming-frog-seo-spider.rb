cask "screaming-frog-seo-spider" do
  version "15.0"
  sha256 "339d3870783fc4c7526eb6b9a671e98f29b89971a78eda2cda43d36548c4329f"

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
