cask "spline" do
  arch arm: "arm64", intel: "x64"

  version "0.20.52"
  sha256 arm:   "69aa26fee3a4bb01a3884e7b4cd410e1010ee439b02a8fcf22e3519c2210afdb",
         intel: "86e88ea50779cc510a5f46f96825718d56a471f144f17978e082b1e34aeee2e3"

  url "https://ejtmihpcmqboccdhutyk.supabase.co/storage/v1/object/public/desktop-releases/Spline-#{version}-#{arch}.mac.zip"
  name "Spline"
  desc "Design and collaborate in 3D"
  homepage "https://spline.design/"

  livecheck do
    url "https://ejtmihpcmqboccdhutyk.supabase.co/storage/v1/object/public/desktop-releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Spline.app"

  uninstall launchctl: "com.design.spline.ShipIt"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.design.spline.sfl*",
    "~/Library/Application Support/Spline",
    "~/Library/Logs/Spline",
    "~/Library/Preferences/com.design.spline.plist",
  ]
end
