cask "principle" do
  version "6.35"
  sha256 "c61103b4af2034b16cd79287ae5fc0805b0ced135af75ce7eaa2e30d3d40052d"

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
