cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.0"
  sha256 arm:   "2b3760f43875622e3f642fc85249ae53ddf67f4525337ac21ddc209fd6eed78d",
         intel: "12aa254d60932c37a0b967896ec3098edfae3d2b2e5e03a4461ec6b33b06a00d"

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
