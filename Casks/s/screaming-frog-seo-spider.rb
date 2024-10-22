cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "20.4"
  sha256 arm:   "c43479feb08bb2ea4e111e1676a0929b8359c3f255d691cb824a6c30c7767cb5",
         intel: "1700c1b74494e35e1b7ab0643f6aade9bfceb5cb9688d48946cb6513a7a1a076"

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
