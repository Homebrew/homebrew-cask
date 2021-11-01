cask "bean" do
  version "3.4.5"
  sha256 "6c72fe309be3f1ae7985c6b75cf5ef39091abe18046c3eb7cf11884c85c4b183"

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
