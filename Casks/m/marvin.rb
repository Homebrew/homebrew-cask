cask "marvin" do
  arch arm: "-arm64"
  hostname_arch = on_arch_conditional arm: "amarm", intel: "amazingmarvin"

  version "1.64.4"
  sha256 arm:   "213f87692d55cbcd5997308203f35b8718ac2c18648f0109354a2132b36a675b",
         intel: "68edd8325fc946305834d304e78dd39ab40336f187a78de90b80e6376047d34c"

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
