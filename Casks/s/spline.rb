cask "spline" do
  arch arm: "arm64", intel: "x64"

  version "0.20.48"
  sha256 arm:   "f54ffcf7506044d945448672f9dddb5ae5b186a847fff965bb536099a5d799ce",
         intel: "5580444d9bf72b15ce32fd4d0d5b9b6af8904ba04716b8a6304b3334a2efca27"

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
