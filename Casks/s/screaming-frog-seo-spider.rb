cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "21.4"
  sha256 arm:   "35bf066bdce2b94b180b33ea84f1e7e7e024b66e43104edc4a2a46c0deca3e1c",
         intel: "879560fcd858e1ccc2d687cccf6209a5536455c506b09c00c0b21d0a843f5bff"

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
