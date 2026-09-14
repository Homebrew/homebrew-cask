cask "spline" do
  arch arm: "arm64", intel: "x64"

  version "0.20.49"
  sha256 arm:   "2c4a1aef9408d74bcfc3662c487f08cb5af78db6b91e67111a57ea0079fcafc7",
         intel: "604e18f61995574506a4dc557905255f36b1b1a671a2f272196adc9c7aad4bb9"

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
