cask "bean" do
  version "3.7.2"
  sha256 "80de91b07874f3a93b67fde9258658fd5ace357535288b3751bce9b779832f8a"

  url "https://www.bean-osx.com/releases/Bean-Install-#{version.dots_to_hyphens}.zip"
  name "Bean"
  desc "Word processor"
  homepage "https://www.bean-osx.com/Bean.html"

  livecheck do
    url "https://www.bean-osx.com/releases/availableVersion.xml"
    strategy :xml do |xml|
      xml.elements["//availableVersion"]&.text&.strip
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Bean-Install-#{version.dots_to_hyphens}/Bean.app"

  zap trash: [
    "~/Library/Preferences/com.bean-osx.Bean.plist",
    "~/Library/Saved Application State/com.bean-osx.Bean.savedState",
  ]
end
