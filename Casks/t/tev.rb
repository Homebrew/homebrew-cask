cask "tev" do
  arch intel: "-intel"

  version "2.3"
  sha256 arm:   "891a943d0d5914977582da57bf4da338a92c612e3b3f4d5b71f00bdfb84222fa",
         intel: "7ff901843c72314bc993f34b9d6745c63db00d396381bacee391512ec7772710"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "HDR image comparison tool with an emphasis on OpenEXR images"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :catalina"

  app "tev.app"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
