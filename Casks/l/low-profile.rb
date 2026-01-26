cask "low-profile" do
  version "5.0.0"
  sha256 "352724ffb62e691d5f26ea09a22b03e945c223fc9e02c45acd6ddbd9b45ea010"

  url "https://github.com/ninxsoft/LowProfile/releases/download/v#{version}/Low.Profile.#{version}.pkg"
  name "Low Profile"
  desc "Utility to help inspect Apple Configuration Profile payloads"
  homepage "https://github.com/ninxsoft/LowProfile"

  depends_on macos: ">= :ventura"

  pkg "Low.Profile.#{version}.pkg"

  uninstall quit:    "com.ninxsoft.lowprofile",
            pkgutil: "com.ninxsoft.pkg.lowprofile"

  zap trash: [
    "~/Library/Caches/com.ninxsoft.lowprofile",
    "~/Library/Preferences/com.ninxsoft.lowprofile.plist",
    "~/Library/Saved Application State/com.ninxsoft.lowprofile.savedState",
  ]
end
