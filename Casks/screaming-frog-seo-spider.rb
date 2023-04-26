cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "18.5"
  sha256 arm:   "60b51f583ddaaaeb65c5bfebd1429c363317e166e413ea48515407d31cb1cb78",
         intel: "c3a995b2a74ff58875d02424d93d3ebc3279335453d91ba7ddf1039627847f50"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url "https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php"
    regex(%r{href=.*?/ScreamingFrogSEOSpider[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b/",
  ]

  caveats do
    depends_on_java "7+"
  end
end
