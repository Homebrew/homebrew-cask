cask "marvin" do
  arch arm: "-arm64"
  hostname_arch = on_arch_conditional arm: "amarm", intel: "amazingmarvin"

  version "1.71.1"
  sha256 arm:   "1304fd16d23ab566662ad1132640852def2f0462a114860f2bb41efc4828583a",
         intel: "49e7e19569f5fe817fccb97e3a6a4475e0b97acb635d647fde3918c3778420fa"

  url "https://#{hostname_arch}.s3.amazonaws.com/Marvin-#{version}#{arch}-mac.zip"
  name "Amazing Marvin"
  desc "Personal productivity app"
  homepage "https://www.amazingmarvin.com/"

  livecheck do
    url "https://#{hostname_arch}.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Marvin.app"

  zap trash: [
    "~/Library/Application Support/Caches/marvin-updater",
    "~/Library/Application Support/Marvin",
    "~/Library/Logs/Marvin",
    "~/Library/Preferences/com.amazingmarvin.marvindesktop.plist",
  ]
end
