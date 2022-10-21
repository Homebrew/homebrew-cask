cask "bean" do
  version "3.4.7"
  sha256 "6aa95b5dcd9c4f5d18631dd17e491ecb4bc33af85bb97d60c627e438bd5c49a9"

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
