cask "bean" do
  version "3.4.2"
  sha256 "9b10490d379d99ad19af4efa0b92188e3b5621bb525b493b4b112208605c7382"

  url "https://www.bean-osx.com/releases/Bean-Install-#{version.dots_to_hyphens}.zip"
  name "Bean"
  desc "Word processor"
  homepage "https://www.bean-osx.com/Bean.html"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      v = page[%r{href=.*?/Bean-Install-(\d+(?:-\d+)*)\.zip}i, 1]
      v.tr("-", ".")
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Bean-Install-#{version.dots_to_hyphens}/Bean.app"
end
