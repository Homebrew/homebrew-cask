cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.2"
  sha256 arm:   "16d081749112d05c2a3c8b12bc24cdeef451ba0525c3f15adfd807089ff97bea",
         intel: "3da4294d9f88a22ce6b081aa8c7045740a1b31f1b0558082d5db3778a049ff02"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url "https://download.screamingfrog.co.uk/products/seo-spider/getlatestversion.php"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b",
  ]
end
