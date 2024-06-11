cask "marvin" do
  arch arm: "-arm64"
  hostname_arch = on_arch_conditional arm: "amarm", intel: "amazingmarvin"

  version "1.65.0"
  sha256 arm:   "749617692387e9f8738b6c59ada2cf02ff2b5eea93546c25765966d6c82cd68d",
         intel: "d8b18a2324e4fe66b34b5dcfcd12db7c5353ba85c260bab306156d29f5ae36fa"

  url "https://#{hostname_arch}.s3.amazonaws.com/Marvin-#{version}#{arch}-mac.zip",
      verified: "#{hostname_arch}.s3.amazonaws.com/"
  name "Amazing Marvin"
  desc "Personal productivity app"
  homepage "https://www.amazingmarvin.com/"

  livecheck do
    url "https://#{hostname_arch}.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Marvin.app"

  zap trash: [
    "~/Library/Application Support/Marvin",
    "~/Library/Logs/Marvin",
    "~/Library/Preferences/com.amazingmarvin.marvindesktop.plist",
  ]
end
