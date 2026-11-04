cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.1"
  sha256 arm:   "ae5610f9f2fe121417cf54f20b81fbcf0f67516b384676224325d4cddaf35c68",
         intel: "adc8fc739b320a7014c8ce6f6321462d042b13e1569991e5ec4325b122dc96e4"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url "https://download.screamingfrog.co.uk/products/seo-spider/getlatestversion.php"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "Screaming Frog SEO Spider.app"

  uninstall quit: "uk.co.screamingfrog.seo.spider"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b",
  ]
end
