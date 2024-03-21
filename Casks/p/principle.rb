cask "principle" do
  version "6.34"
  sha256 "28e4b38c76e259ff886e4712729cf7fa303196905c83879825004c471033acbe"

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  name "Principle"
  desc "Design animated and interactive user interfaces"
  homepage "https://principleformac.com/"

  livecheck do
    url "https://principleformac.com/update2.xml"
    strategy :sparkle, &:short_version
  end

  app "Principle.app"

  zap trash: [
    "~/Library/Application Support/com.danielhooper.principle",
    "~/Library/Caches/com.danielhooper.principle",
    "~/Library/HTTPStorages/com.danielhooper.principle",
    "~/Library/Preferences/com.danielhooper.principle.plist",
    "~/Library/Saved Application State/com.danielhooper.principle.savedState",
  ]
end
