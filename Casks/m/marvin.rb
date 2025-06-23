cask "marvin" do
  arch arm: "-arm64"
  hostname_arch = on_arch_conditional arm: "amarm", intel: "amazingmarvin"

  version "1.68.0"
  sha256 arm:   "6f5fbb35bf2d343862361cc4dd36e256e14ac27cb0c90be056a6c6726102f643",
         intel: "15aacff378b01eba9c00939cfde835414d4aeeab9eeeea67b8e3e0e598321add"

  url "https://#{hostname_arch}.s3.amazonaws.com/Marvin-#{version}#{arch}-mac.zip",
      verified: "#{hostname_arch}.s3.amazonaws.com/"
  name "Amazing Marvin"
  desc "Personal productivity app"
  homepage "https://www.amazingmarvin.com/"

  livecheck do
    url "https://#{hostname_arch}.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Marvin.app"

  zap trash: [
    "~/Library/Application Support/Caches/marvin-updater",
    "~/Library/Application Support/Marvin",
    "~/Library/Logs/Marvin",
    "~/Library/Preferences/com.amazingmarvin.marvindesktop.plist",
  ]
end
