cask "screaming-frog-seo-spider" do
  version "16.4"
  sha256 "b6098e718c454dab1374bd03c6c489c73aaeffdac52cb093ae23879bf9a97a3d"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
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
