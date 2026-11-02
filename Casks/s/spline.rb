cask "spline" do
  arch arm: "arm64", intel: "x64"

  version "0.20.51"
  sha256 arm:   "b918fd4384941af9f3e3d8e288f381f0d232a8704d3857d434655918f9fa7d46",
         intel: "df9be637d93a4a1d9b9a13c9dedaaa63e5919896d1dade84a5c51be2cb9f9a64"

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

  zap trash: "~/Library/Preferences/com.design.spline.plist"
end
