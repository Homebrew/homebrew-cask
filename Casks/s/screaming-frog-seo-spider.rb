cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "21.0"
  sha256 arm:   "81ec4257d37bc96020fbee2da13175d509623f433ed7c55cf808f208047e84bb",
         intel: "f8ce1283ddd2cea7b3827d9d6332d3e54d755c9f5b0a7a2e45ec65bc95f29c6e"

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
