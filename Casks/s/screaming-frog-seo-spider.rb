cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.0"
  sha256 arm:   "b62307014dbac5d6587bded045e1c362b975681ff012a02c9e17eb2cd7367ff3",
         intel: "20447f3149d184a8accc214ecbe671b6b0652de99402544e7c5d1dbfcca8104c"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  # The homepage links to the latest dmg files but Cloudflare protections
  # prevent us from fetching it, so it must be checked manually.
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on macos: :big_sur

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b",
  ]
end
