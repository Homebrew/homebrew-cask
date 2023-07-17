cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "19.0"
  sha256 arm:   "03fc88ca96f599568f0c79f0774012423922178cfdda02f7bd62c5fbaa72f4a6",
         intel: "363c6097517e26a26d514cf0abd9839c42b7e110848265d9c47659b0f7028643"

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
