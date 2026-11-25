cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "25.2"
  sha256 arm:   "7aefba9a89903537a68a7435926cfd511bfee237de2abbeb91c96d4fc51d3846",
         intel: "a28ceb8f46b9931d4182c965220769ffceab02504608dc220b75eb03f3323580"

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
