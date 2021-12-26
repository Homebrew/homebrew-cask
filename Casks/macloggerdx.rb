cask "macloggerdx" do
  version "6.36"
  sha256 "25ac048ed04a23c7b9a478d445847d7960e2146c67e83f7c8cd98ce770d3eb74"

  url "https://www.dogparksoftware.com/files/MacLoggerDX#{version.no_dots}.dmg"
  name "MacLoggerDX"
  desc "Ham radio logging and rig control software"
  homepage "https://www.dogparksoftware.com/MacLoggerDX.html"

  livecheck do
    url :homepage
    regex(/Download:\s*v?(\d+(?:\.\d+)+)[^a-z]+/i)
  end

  depends_on macos: ">= :high_sierra"

  app "MacLoggerDX.app"

  zap trash: "~/Library/Preferences/com.dogparksoftware.MacLoggerDX*.plist"
end
