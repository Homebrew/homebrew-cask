cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.0"
  sha256 arm:   "a9c505b1ca02d7a3df03ea3d6e9d8c043648587c267931a1324935245d5fc435",
         intel: "1d3f0fb67d6a6cfb545cbb6a99881e602b0b1fbc4ca952addb8af52a192411f6"

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
