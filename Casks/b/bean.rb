cask "bean" do
  version "3.7.5"
  sha256 "656173868dfe022db8d15c83b447b91ac57f02046fc5058c91129180227f55eb"

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

  app "Bean-Install-#{version.dots_to_hyphens}/Bean.app"

  zap trash: [
    "~/Library/Preferences/com.bean-osx.Bean.plist",
    "~/Library/Saved Application State/com.bean-osx.Bean.savedState",
  ]
end
