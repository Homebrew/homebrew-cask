cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "19.4"
  sha256 arm:   "5acc603d7e2f7dc81f2af928fe5e52be42faf3b6cc2c992311a09aee8a38258c",
         intel: "c7c73864bc8563c20ce3b208ff86b8571ca115b9fbc5fa13e3f29b907538737b"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ScreamingFrogSEOSpider[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b/",
  ]
end
