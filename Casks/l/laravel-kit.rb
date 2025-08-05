cask "laravel-kit" do
  arch arm: "-arm64"

  version "2.0.9"
  sha256 arm:   "ddab08305eefb11f46009d257685b87b8649fb928afee318b1f5d7eaa7a538f8",
         intel: "5d17be67b3bfc4fedcf6de0e64e8e4a93df9b467cb8540e073c3d52b4346697d"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/Laravel-Kit-#{version}#{arch}-mac.zip",
      verified: "github.com/tmdh/laravel-kit/"
  name "Laravel Kit"
  desc "Desktop Laravel admin panel app"
  homepage "https://tmdh.github.io/laravel-kit"

  depends_on macos: ">= :high_sierra"

  app "Laravel Kit.app"

  zap trash: [
    "~/Library/Application Support/laravel-kit",
    "~/Library/Preferences/com.tmdh.laravel-kit.plist",
    "~/Library/Saved Application State/com.tmdh.laravel-kit.savedState",
  ]
end
