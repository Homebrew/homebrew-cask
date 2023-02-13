cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "18.2"
  sha256 arm:   "4fed8fc4cc7661adafcaeb80e69f8e1df9a5f29ae6fc323e8b17f99856fd150f",
         intel: "65b08d61386c4606c1d3efdf74656bce2d7138bc4f41251acd0301f515aeb804"

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
