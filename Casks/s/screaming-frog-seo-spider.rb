cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.1"
  sha256 arm:   "4b246a5e379e20503aaf8ffe7b7c563540ba9b3e160a1880a1710ca701686d3a",
         intel: "32519ad0e70f02bff4942c803bdbd3bf1259a9c367ab9bda1f55fac8d8398177"

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
