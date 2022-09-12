cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "17.2"
  sha256 arm:   "ae12630815a2812b96453941343772c0d9d01678e6912b180b386bf5be083222",
         intel: "e23e77d44cc7e1149ef21831ce8c007f093baa3e70ae84e2ab85db2b485e1508"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url "https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php"
    regex(%r{href=.*?/ScreamingFrogSEOSpider[._-]v?(\d+(?:\.\d+)+)-(aarch64|x86_64)\.dmg}i)
  end

  app "Screaming Frog SEO Spider.app"

  caveats do
    depends_on_java "7+"
  end
end
