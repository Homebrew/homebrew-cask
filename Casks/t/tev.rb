cask "tev" do
  arch intel: "-intel"

  version "2.3.2"
  sha256 arm:   "3d506f5b99d9dafc65d7bf784d3bcb0c4eab2440f4ace4089c47a7f22330cf1a",
         intel: "392ad239912388f04b3521b91d7979148e3d11d9f09f4ae9a372f92e682670ee"

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
