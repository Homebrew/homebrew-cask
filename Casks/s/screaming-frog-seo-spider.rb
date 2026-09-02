cask "screaming-frog-seo-spider" do
  arch arm: "aarch64", intel: "x86_64"

  version "24.3"
  sha256 arm:   "6487d07b0f16782a85f8080cfbef56a59df8dec9372940f2504b0d95df32fc7b",
         intel: "0f70c9fccb92edfc4378e66f90dad3078c177ebe239cf7564dab57553a3f2fad"

  url "https://download.screamingfrog.co.uk/products/seo-spider/ScreamingFrogSEOSpider-#{version}-#{arch}.dmg"
  name "Screaming Frog SEO Spider"
  desc "SEO site audit tool"
  homepage "https://www.screamingfrog.co.uk/seo-spider/"

  livecheck do
    url "https://download.screamingfrog.co.uk/products/seo-spider/getlatestversion.php"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "Screaming Frog SEO Spider.app"

  zap trash: [
    "~/.ScreamingFrogSEOSpider",
    "~/Library/Application Support/uk.co.screamingfrog.seospider.ui.b",
  ]
end
