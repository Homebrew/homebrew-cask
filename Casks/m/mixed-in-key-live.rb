cask "mixed-in-key-live" do
  version "9676-494"
  sha256 :no_check

  url "https://builds.mixedinkey.com/download/55/release/latest?key=public"
  name "Mixed In Key Live"
  desc "Get the Key and BPM of any audio, instantly"
  homepage "https://mixedinkey.com/live"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true

  pkg "Mixed In Key Live.pkg"

  bundle_id = "com.mixedinkey.MIK-Live"
  uninstall quit: bundle_id, pkgutil: "com.mixedinkey.Mixed_In_Key_Live.pkg"

  zap trash: [
    "~/Library/Application Support/#{bundle_id}",
    "~/Library/Application Support/Mixedinkey",
    "~/Library/Caches/#{bundle_id}",
    "~/Library/HTTPStorages/#{bundle_id}",
    "~/Library/Preferences/#{bundle_id}.plist",
    "~/Library/Saved Application State/#{bundle_id}.savedState",
  ]
end
