cask "bean" do
  version "3.4.4"
  sha256 "795a2c973c979b3dcc2cf0df5f36b94b605127b0e5f1aa726852a04f489a384f"

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
