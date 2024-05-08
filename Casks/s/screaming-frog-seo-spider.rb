cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "20.0"
  sha256 arm:   "b640467d3175185c789f8db58066ff8ba4445e2404b9afed10dec610f603addd",
         intel: "11f1ee688e50acf3f26139eff7166dbd59e8cc3539fff0f676837df4c0337fc8"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ScreamingFrogSEOSpider[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b/",
  ]
end
