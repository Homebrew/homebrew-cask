cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "17.1"
  sha256 arm:   "7b03b9a45b0bbb4d33f2eda04da42a6cff568db0ab3abb3487a09c0a783e1bc5",
         intel: "1e0404fa8bcc31c03006eb6c6db13e7023d8eff35ed3eae8c3ad3bc950f9d276"

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
