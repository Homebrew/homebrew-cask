cask "principle" do
  version "6.41"
  sha256 "1d2f102a4f834c1df46b15d551fe7040016bf178e389c070341a785cfdf28a07"

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  name "Principle"
  desc "Design animated and interactive user interfaces"
  homepage "https://principleformac.com/"

  livecheck do
    url "https://principleformac.com/update2.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Principle.app"

  zap trash: [
    "~/Library/Application Support/com.danielhooper.principle",
    "~/Library/Caches/com.danielhooper.principle",
    "~/Library/HTTPStorages/com.danielhooper.principle",
    "~/Library/Preferences/com.danielhooper.principle.plist",
    "~/Library/Saved Application State/com.danielhooper.principle.savedState",
  ]
end
