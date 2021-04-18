cask "arkiwi" do
  version "4.0"
  sha256 "6725544c12d8f012a7aafb832c3318ce9a04853296ef3047e9a79c9eee9113d5"

  url "https://www.mariogt.com/appsChest/ArKiwi#{version.dots_to_hyphens}.zip"
  name "ArKiwi"
  desc "Blazing fast and optimized file archiver"
  homepage "https://www.mariogt.com/arkiwi.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Download ArKiwi (\d+[.]\d+)/i)
  end

  app "ArKiwi.app"

  zap trash: [
    "~/Library/Containers/com.mariogt.arkiwi/Data/Library/Application Support/ArKiwi",
    "~/Library/Containers/com.mariogt.arkiwi/Data/Library/Preferences/com.mariogt.arkiwi.plist",
  ]
end
