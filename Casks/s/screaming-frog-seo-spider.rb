cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "21.1"
  sha256 arm:   "2590545f577c30400304bf40740cf2ff4389bb6840af10503a88a73a00392fd6",
         intel: "f9bdd56765b4c50700cca8956dfb716f8983017857b415c356ffc99e03c029a7"

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
