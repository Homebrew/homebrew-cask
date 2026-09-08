cask "captin" do
  version "2.0.1"
  sha256 :no_check

  url "https://raw.githubusercontent.com/cool8jay/public/master/captin/Captin.zip"
  name "Captin"
  desc "Tool to show caps lock status"
  # https://captin.mystrikingly.com/ got redirected to some phishing site
  homepage "https://github.com/cool8jay/public"

  depends_on macos: :big_sur

  app "Captin.app"

  uninstall quit: "com.100hps.captin"

  zap trash: [
    "~/Library/Caches/com.100hps.captin",
    "~/Library/Preferences/com.100hps.captin.plist",
  ]
end
