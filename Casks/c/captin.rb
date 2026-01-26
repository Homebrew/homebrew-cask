cask "captin" do
  version "1.3.1"
  sha256 :no_check

  url "https://raw.githubusercontent.com/cool8jay/public/master/captin/Captin.zip",
      verified: "raw.githubusercontent.com/cool8jay/public/master/captin/"
  name "Captin"
  desc "Tool to show caps lock status"
  # https://captin.mystrikingly.com/ got redirected to some phishing site
  homepage "https://github.com/cool8jay/public"

  deprecate! date: "2025-11-30", because: :discontinued
  disable! date: "2026-11-30", because: :discontinued

  app "Captin.app"

  uninstall quit: "com.100hps.captin"

  zap trash: [
    "~/Library/Caches/com.100hps.captin",
    "~/Library/Preferences/com.100hps.captin.plist",
  ]
end
