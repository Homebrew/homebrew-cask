cask "macloggerdx" do
  version "6.36"
  sha256 "25ac048ed04a23c7b9a478d445847d7960e2146c67e83f7c8cd98ce770d3eb74"

  url "https://www.dogparksoftware.com/files/MacLoggerDX#{version.delete(".")}.dmg"
  name "MacLoggerDX"
  desc "Ham Radio Logging and Rig Control Software"
  homepage "https://www.dogparksoftware.com/MacLoggerDX.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Download: v(\d+(?:\.\d+)*)[^a-z]+/i)
  end

  app "MacLoggerDX.app"

  zap trash: [
    "~/Library/Preferences/com.dogparksoftware.MacLoggerDX*.plist",
  ]
end
