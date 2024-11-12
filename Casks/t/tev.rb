cask "tev" do
  version "1.29"
  sha256 "f93cd2906dd7ad191f32326115fd5a854206c0db3b14934c6d646c64b31dfe4e"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev.dmg"
  name "tev"
  desc "HDR image comparison tool with an emphasis on OpenEXR images"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :catalina"

  app "tev.app"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
