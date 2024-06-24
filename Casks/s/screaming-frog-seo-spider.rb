cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "20.2"
  sha256 arm:   "8518507cb8ced13ae7b13cda46668836e9eb3d34008bc3f2ddcaed3c4ad746b5",
         intel: "885211b925a88b6fdd405f68a46aa9e4a978fc5d7b26969b5c6ee57b33989b9a"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ScreamingFrogSEOSpider[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b/",
  ]
end
