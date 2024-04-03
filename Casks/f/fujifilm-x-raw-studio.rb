cask "fujifilm-x-raw-studio" do
  version "1.22.0"
  sha256 "a6f72c8ca5bbe83c5a6d2bab0c64c611112c195e617518c075b2530ac065a638"

  url "https://dl.fujifilm-x.com/support/software/x-raw-studio-mac#{version.no_dots}-p2ep21rl/XRawStudio#{version.no_dots}.dmg"
  name "fujifilm-x-raw-studio"
  desc "Convert RAW images captured with Fujifilm cameras"
  homepage "https://fujifilm-x.com/global/products/software/x-raw-studio/"

  livecheck do
    url "https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/"
    regex(/Mac\s*Version\s*:\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "FUJIFILM X RAW STUDIO.app"

  zap trash: [
    "~/Library/Application Support/com.fujifilm.denji",
    "~/Library/Preferences/com.fujifilm.denji.X-RAW-STUDIO.plist",
  ]
end
