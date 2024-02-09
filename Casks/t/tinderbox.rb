cask "tinderbox" do
  version "9.7.2"
  sha256 "3626b23b282c4f47c9dbd6958e2c7c28ec097936211e15c3f862ecad75bfddd3"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name "Tinderbox"
  desc "Tool to take, visualize and analyze notes"
  homepage "https://eastgate.com/Tinderbox/"

  livecheck do
    url :homepage
    regex(/>Download.*?Tinderbox\s+v?(\d+(?:\.\d+)+)[<\s]/im)
  end

  depends_on macos: ">= :high_sierra"

  app "Tinderbox #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Tinderbox",
    "~/Library/Caches/com.eastgate.Tinderbox-9",
    "~/Library/Preferences/com.eastgate.Tinderbox-9.plist",
    "~/Library/Preferences/Tinderbox™ Preferences",
    "~/Library/Saved Application State/com.eastgate.Tinderbox-9.savedState",
    "~/Library/WebKit/com.eastgate.Tinderbox-9",
  ]
end
