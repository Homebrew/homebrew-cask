cask "marvin" do
  arch arm: "-arm64"
  hostname_arch = on_arch_conditional arm: "amarm", intel: "amazingmarvin"

  version "1.63.0"
  sha256 arm:   "0e0bc18c1274f3f6a2d45dd45ddd6448f0a917d8de5cd68a3a69eaabd0595903",
         intel: "8f6c4ca13956c41731086e2112fe79418e00248544e61d713b3ea9ff8d89c77a"

  url "https://#{hostname_arch}.s3.amazonaws.com/Marvin-#{version}#{arch}.dmg",
      verified: "#{hostname_arch}.s3.amazonaws.com/"
  name "Amazing Marvin"
  desc "Personal productivity app"
  homepage "https://www.amazingmarvin.com/"

  livecheck do
    url "http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg"
    strategy :header_match
  end

  app "Marvin.app"

  zap trash: [
    "~/Library/Application Support/Marvin",
    "~/Library/Logs/Marvin",
    "~/Library/Preferences/com.amazingmarvin.marvindesktop.plist",
  ]
end
