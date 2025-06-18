cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "22.1"
  sha256 arm:   "df9d274665ea91dd7a59c20cd765690bb24081229baefeb293e0301644b4bebe",
         intel: "dda8f7d986542484331c3d1aa64ff6246707d0b16f15d86612c6b9370ef5696d"

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
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b",
  ]
end
