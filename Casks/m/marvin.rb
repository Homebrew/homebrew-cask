cask "marvin" do
  arch arm: "-arm64"
  hostname_arch = on_arch_conditional arm: "amarm", intel: "amazingmarvin"

  version "1.64.3"
  sha256 arm:   "11090975330e3f45172f55e36b0fb8b39456a5b76b46eb856fa0c66d82f7832a",
         intel: "350604cb95a5d9de1405002f1459fc4f62799c02f863a2c551a1a750606683b1"

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
