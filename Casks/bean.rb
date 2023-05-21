cask "bean" do
  version "3.5.1"
  sha256 "9e0e0e7b39819714ca27f8b41e63d4c0a2a995fbb74317940bcc454ebc2cd15e"

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
