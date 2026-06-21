cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.1"
  sha256 arm:   "fa6a520b0f3d4b7fa7650990c886eeb37e2bcb3c132d2c3a64879b01e1f0ebbd",
         intel: "741b49e399748f742543878880c241655af65821afb7c2ec12ecfeca64abaee7"

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
