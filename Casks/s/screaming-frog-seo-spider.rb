cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.2"
  sha256 arm:   "6e3676d8c857b27c5f5e12bc31d667e2b200c5e0fc729d92a06d6d2843b4f662",
         intel: "b65c2f2be9bac650a03380eb3e44eed795895dfd52487c4e5585a4238cb94e7a"

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
