cask "supercorners" do
  version "1.3.0"
  sha256 "06221f6c8a78cdad24abff9183cc4485c2e5d7853df65ddd4a7d0c6c3b1d0f79"

  url "https://github.com/daniyalmaster693/SuperCorners/releases/download/#{version}/SuperCorners.zip"
  name "SuperCorners"
  desc "Supercharge your Mac's Corners"
  homepage "https://github.com/daniyalmaster693/SuperCorners"

  livecheck do
    url "https://daniyalmaster693.github.io/SuperCorners/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  license "GPL-3.0-or-later"
  app "SuperCorners.app"

uninstall quit: "daniyalmaster.SuperCorners"

zap trash: [
  "~/Library/Application Scripts/daniyalmaster.SuperCorners",
  "~/Library/Application Support/SuperCorners",
  "~/Library/Caches/daniyalmaster.SuperCorners",
  "~/Library/HTTPStorages/daniyalmaster.SuperCorners",
  "~/Library/Preferences/daniyalmaster.SuperCorners.plist",
]
end