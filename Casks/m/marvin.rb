cask "marvin" do
  arch arm: "-arm64"
  hostname_arch = on_arch_conditional arm: "amarm", intel: "amazingmarvin"

  version "1.66.2"
  sha256 arm:   "f0bdf3eb1c7741cbdae40a096c131fe0739c9273696dc915ed87c8169d9d15b6",
         intel: "2b0f33b383a111fe1c4ef1e761cda0f78ca65d964fbfdc49793c2032f829db0e"

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
