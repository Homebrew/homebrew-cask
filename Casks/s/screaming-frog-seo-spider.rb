cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.0"
  sha256 arm:   "cbfe9ef0d7c9f3d30f3b6f29f1266d882674dc41fb401c7a440878c16e3015a1",
         intel: "4575b1511ff711add480e1e03d2465bef35c8bd0527331ce40b2b5fc2f780c19"

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
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b",
  ]
end
