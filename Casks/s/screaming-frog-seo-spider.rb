cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "20.3"
  sha256 arm:   "4547fe1073f5c17fc92d57a8ed865c983e376aadd478d0b0e73f5fab53cd192c",
         intel: "5e882fcec9a2b0db66c50892da6b5d2dfa0d499fe107c47220a13b16d1b75e92"

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
