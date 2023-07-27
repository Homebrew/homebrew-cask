cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "19.1"
  sha256 arm:   "4fd21ed6b909252aff753cd49155e8ccf0f075cf2bc15a79a326925c518143ee",
         intel: "7b4216f0c70b8cb3ce14df3dd1a7b3007644e129984dbccd9ae3154de9106ba2"

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
