cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "20.1"
  sha256 arm:   "a39d20ba77e1423840a60318bc91e8831c9b182b4c5fd4ca87ee7f5cf85d0611",
         intel: "88d33be6bb195ec3a83cfc8c139263e11a3f8e33d39ea47a78c4ec4a0dc25003"

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
