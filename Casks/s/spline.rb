cask "spline" do
  arch arm: "arm64", intel: "x64"

  version "0.20.40"
  sha256 arm:   "d82ee3b6f7b5e784aa46ffc986cc05553b918f0dd2fde93eb3926518d9b7c893",
         intel: "d787035dfd2143692bfea5f09d6e1047800c7d52322eb7cbfc89d46917b2a23b"

  url "https://ejtmihpcmqboccdhutyk.supabase.co/storage/v1/object/public/desktop-releases/Spline-#{version}-#{arch}.mac.zip"
  name "Spline"
  desc "Design and collaborate in 3D"
  homepage "https://spline.design/"

  livecheck do
    url "https://s3.amazonaws.com/updater.spline.design/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Spline.app"

  zap trash: "~/Library/Preferences/com.design.spline.plist"
end
