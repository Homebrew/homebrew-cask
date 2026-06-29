cask "openrgb" do
  arch arm: "ARM64", intel: "Intel"

  version "1.0rc3,6fbcf62"
  sha256 arm:   "d90ec7045a54acfeb00b230ce5c173eb915234e032f9c9c98f1a5172dc7d1746",
         intel: "050222f6a0740977980e59dd849182180faa6c6a8f19ffe4ea51a98451415c20"

  # TODO: Remove the `candidate` part of this url when updating to the next
  # stable version, so we only match stable versions going forward.
  url "https://codeberg.org/OpenRGB/OpenRGB/releases/download/release_candidate_#{version.csv.first}/OpenRGB_#{version.csv.first}_MacOS_#{arch}_#{version.csv.second}.zip",
      verified: "codeberg.org/OpenRGB/OpenRGB/"
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

  depends_on macos: :big_sur

  app "OpenRGB.app"

  zap trash: [
    "~/.config/OpenRGB",
    "~/Library/Preferences/com.yourcompany.OpenRGB.plist",
    "~/Library/Saved Application State/com.yourcompany.OpenRGB.savedState",
  ]
end
