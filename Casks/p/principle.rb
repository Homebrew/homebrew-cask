cask "principle" do
  version "6.38"
  sha256 "a10ed4635ca851d8521df23db2e0f2f9d7e4f7fd67e450a13bab0a53a6058708"

  url "https://principleformac.com/download/Principle_#{version.dots_to_underscores}.zip"
  name "Principle"
  desc "Design animated and interactive user interfaces"
  homepage "https://principleformac.com/"

  livecheck do
    url "https://principleformac.com/update2.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Principle.app"

  zap trash: [
    "~/Library/Application Support/com.danielhooper.principle",
    "~/Library/Caches/com.danielhooper.principle",
    "~/Library/HTTPStorages/com.danielhooper.principle",
    "~/Library/Preferences/com.danielhooper.principle.plist",
    "~/Library/Saved Application State/com.danielhooper.principle.savedState",
  ]
end
