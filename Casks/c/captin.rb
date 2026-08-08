cask "captin" do
  version "2.0.1"
  sha256 "a56ee238b94f21d99c250ca95d11aba41f270ac68d6e888a4bff6628a361890a"

  url "https://raw.githubusercontent.com/cool8jay/public/master/captin/Captin.zip",
      verified: "raw.githubusercontent.com/cool8jay/public/master/captin/"
  name "Captin"
  desc "Tool to show caps lock status"
  # https://captin.mystrikingly.com/ got redirected to some phishing site
  homepage "https://github.com/cool8jay/public"

  depends_on :macos

  app "Captin.app"

  uninstall quit: "com.100hps.captin"

  zap trash: [
    "~/Library/Caches/com.100hps.captin",
    "~/Library/Preferences/com.100hps.captin.plist",
  ]
end
