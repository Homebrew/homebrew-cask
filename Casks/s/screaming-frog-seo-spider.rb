cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "19.2"
  sha256 arm:   "3b85e48c39cc8423b16604264288d51d1c54bcc23155cb25bbd03e8dc70ab828",
         intel: "0fc3dec2f7903568b1d4c1ddf3414031ccd53eb6e86854d10aa7a789b45e01c1"

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
