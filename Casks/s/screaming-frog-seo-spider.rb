cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.2"
  sha256 arm:   "03326e627b796c0d44135a6a215ae01f50f973f8ebd624ab2e0ea52c15b2fc4d",
         intel: "504d125ed8984fc7653036d15dbb8476649f245ad749cfb25e6caa67c3347347"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  # The homepage links to the latest dmg files but Cloudflare protections
  # prevent us from fetching it, so it must be checked manually.
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on macos: ">= :big_sur"

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b",
  ]
end
