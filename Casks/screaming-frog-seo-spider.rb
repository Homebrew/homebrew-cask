cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "17.0"
  sha256 arm:   "7dbeec31e9ba7461d7d182e5a70861283ca4cc409863b8b45351923b836b49c0",
         intel: "349449bf2e9299cb988da4e6f46fbe3acbd7380c5d1a128d764ad1a1ab1c8aa8"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url "https://www.screamingfrog.co.uk/wp-content/themes/screamingfrog/inc/download-modal.php"
    regex(%r{href=.*?/ScreamingFrogSEOSpider[._-]v?(\d+(?:\.\d+)+)-(aarch64|x86_64)\.dmg}i)
  end

  app "Screaming Frog SEO Spider.app"

  caveats do
    depends_on_java "7+"
  end
end
