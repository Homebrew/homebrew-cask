cask "marvin" do
  arch arm: "-arm64"
  hostname_arch = on_arch_conditional arm: "amarm", intel: "amazingmarvin"

  version "1.71.4"
  sha256 arm:   "11151e72026f2f1e8c88180f3624cb435a3cee8309bc98a57bbe44cb29f8123d",
         intel: "60a4834975c50dc366c6b59d8478007b4a82aa2c3f0cb3dcf962312566bea893"

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
