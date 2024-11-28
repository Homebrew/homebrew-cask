cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "21.2"
  sha256 arm:   "26cc91a236a158e9f667f50bf8bfb4129d1230d9d3af00a554e5ddd5c44bd7fe",
         intel: "07f4cc6391be2cab163091568700dd9e4c393fd71de754558fee9976633263a8"

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
