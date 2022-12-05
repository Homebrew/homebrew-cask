cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "18.0"
  sha256 arm:   "c24571f2d21814c1e99ecbfc87bf0530095d3857d424d4e441c75f2de2b9d2f1",
         intel: "01ed78791ca7f0d439b22a5c89301356f3ac6e6f2f3eb053cfbe392f6d0ebecb"

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
