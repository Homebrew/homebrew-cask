cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "23.3"
  sha256 arm:   "d263873f08a4323104a259b776c1a3a12ccebdd1a19ae0f22312e188954a52b5",
         intel: "6ba1205e7531ae7a31e822b796528299d60a55847ba57c34c81d52257b6e1495"

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
