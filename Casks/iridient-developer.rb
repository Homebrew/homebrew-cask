cask "iridient-developer" do
  version "3.6.0"
  sha256 "e6078b71f880f5c75f6be9da8d7bca05d6a4377cb3cd225e3dd4a93323bc0411"

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}_Universal.dmg"
  name "Iridient Developer"
  desc "Image processing application"
  homepage "https://www.iridientdigital.com/"

  livecheck do
    url "https://www.iridientdigital.com/products/iridientdeveloper_download.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/IridientDeveloper_(\d+)(\d+)(\d+)_Universal\.dmg}i)
      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  depends_on macos: ">= :mojave"

  app "Iridient Developer.app"
end
