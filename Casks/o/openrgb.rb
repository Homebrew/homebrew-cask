cask "openrgb" do
  arch arm: "ARM64", intel: "Intel"

  version "1.0rc2,0fca93e"
  sha256 arm:   "0846520bdc6d7bf1abc6eabbf4f44c5e2507761fcf1e1a220e85c138056f33eb",
         intel: "fb1b000293ecd2981134fdc6b26e9453c9db33977a0442a82605ec4f7ab2e5ef"

  url "https://codeberg.org/OpenRGB/OpenRGB/releases/download/release_candidate_#{version.csv.first}/OpenRGB_#{version.csv.first}_MacOS_#{arch}_#{version.csv.second}.zip",
      verified: "codeberg.org/"
  name "OpenRGB"
  desc "Open source RGB lighting control that doesn't depend on manufacturer software"
  homepage "https://openrgb.org/"

  # TODO: Remove the `(?:rc\d*)?` part of this regex when updating to the next
  # stable version, so we only match stable versions going forward.
  livecheck do
    url "https://openrgb.org/releases.html"
    regex(/href=.*?OpenRGB[._-]v?(\d+(?:\.\d+)+(?:rc\d*)?)[._-]MacOS[._-]#{arch}[._-](\h+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "OpenRGB.app"

  zap trash: [
    "~/.config/OpenRGB",
    "~/Library/Preferences/com.yourcompany.OpenRGB.plist",
    "~/Library/Saved Application State/com.yourcompany.OpenRGB.savedState",
  ]
end
