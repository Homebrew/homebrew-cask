cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "18.4"
  sha256 arm:   "19b35cb6ed3afa1986bd8725073d63b75ed1c633bd6984e38b196aff9069e7d1",
         intel: "74795cc8f0c64312b4dbde158bc99cc0b69ac489ce28008dcf09f01ffb7a1b7e"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url "https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php"
    regex(%r{href=.*?/ScreamingFrogSEOSpider[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b/",
  ]

  caveats do
    depends_on_java "7+"
  end
end
