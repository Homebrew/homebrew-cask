cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "21.3"
  sha256 arm:   "71edd20b7daaf78c3091c54e16e14c99d9be5293bf312465eaf6bdb65f742cd4",
         intel: "cc64765b90ac782f4dfb1c971929022b0db91c4b44aa1996a445ae8ebea3c3cc"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ScreamingFrogSEOSpider[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b/",
  ]
end
