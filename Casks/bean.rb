cask "bean" do
  version "3.6.0"
  sha256 "492d70e4e8746822cd0bb607d95122f3f820b021d564596757f012d2d2c87d56"

  url "https://www.bean-osx.com/releases/Bean-Install-#{version.dots_to_hyphens}.zip"
  name "Bean"
  desc "Word processor"
  homepage "https://www.bean-osx.com/Bean.html"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Bean[._-]Install[._-]v?(\d+(?:-\d+)+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("-", ".") }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Bean-Install-#{version.dots_to_hyphens}/Bean.app"

  zap trash: [
    "~/Library/Preferences/com.bean-osx.Bean.plist",
    "~/Library/Saved Application State/com.bean-osx.Bean.savedState",
  ]
end
