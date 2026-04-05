cask "openrgb" do
  arch arm: "ARM64", intel: "Intel"

  version "1.0rc2,0fca93e"
  sha256 arm:   "0846520bdc6d7bf1abc6eabbf4f44c5e2507761fcf1e1a220e85c138056f33eb",
         intel: "fb1b000293ecd2981134fdc6b26e9453c9db33977a0442a82605ec4f7ab2e5ef"

  url "https://codeberg.org/OpenRGB/OpenRGB/releases/download/release_candidate_#{version.csv.first}/OpenRGB_#{version.csv.first}_MacOS_#{arch}_#{version.csv.second}.zip",
      verified: "codeberg.org/OpenRGB/OpenRGB/"
  name "OpenRGB"
  desc "Open source RGB lighting control that doesn't depend on manufacturer software"
  homepage "https://openrgb.org/"

  livecheck do
    url "https://codeberg.org/OpenRGB/OpenRGB/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/release_candidate_(\d+(?:\.\d+)*rc\d+)/OpenRGB_.*?_MacOS_#{arch}_(\h+)\.zip}i)
      next if match.nil?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "OpenRGB.app"

  zap trash: [
    "~/.config/OpenRGB",
    "~/Library/Preferences/com.yourcompany.OpenRGB.plist",
    "~/Library/Saved Application State/com.yourcompany.OpenRGB.savedState",
  ]
end
