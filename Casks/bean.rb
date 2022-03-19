cask "bean" do
  version "3.4.6"
  sha256 "d966fcf0ba1de1f779e57421d819771b78d0f6ad74d4b3760fa5d0dca9e12495"

  url "https://www.bean-osx.com/releases/Bean-Install-#{version.dots_to_hyphens}.zip"
  name "Bean"
  desc "Word processor"
  homepage "https://www.bean-osx.com/Bean.html"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      v = page[%r{href=.*?/Bean[._-]Install[._-]v?(\d+(?:-\d+)+)\.zip}i, 1]
      v.tr("-", ".")
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Bean-Install-#{version.dots_to_hyphens}/Bean.app"
end
