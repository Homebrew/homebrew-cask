cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "18.1"
  sha256 arm:   "0e8f423efe86711bc3495166bccf676dd25ecabae49a684a62397cdf7af29de2",
         intel: "70b83a1f14e89de55fb00857b923be168e80273030ce395c33040bb463eb60d8"

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
