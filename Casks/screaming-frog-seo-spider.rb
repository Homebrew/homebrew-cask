cask "screaming-frog-seo-spider" do
  version "15.2"
  sha256 "c1f068463604b8df3b6866459229983ae24c876cf1a6cc23ed4f9df8f2c23d2b"

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
