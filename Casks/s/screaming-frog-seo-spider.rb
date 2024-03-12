cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "19.8"
  sha256 arm:   "21bca9613540f8c9bb937941a4a26adb3e44fb2eddb2a3f19a5100dcbb756834",
         intel: "165b615e1130c0b2fac7393b68c4ebb01766f4e0f07f465d8074d5d7ad1c1497"

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
