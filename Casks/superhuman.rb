cask "superhuman" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "11.0.36"

  if Hardware::CPU.intel?
    sha256 "ccc9c8526757dad96fab06ab29e7a0b955a2f9658553212c4679262afef020e5"
  else
    sha256 "0285fcabbc6e7dafc3f94185e1be0c32804f9bea692136707cf3cfafb245d22b"
  end

  url "https://storage.googleapis.com/download.superhuman.com/supertron-update/Superhuman-#{version}#{arch}-latest-mac.zip",
      verified: "storage.googleapis.com/download.superhuman.com/"
  name "Superhuman"
  desc "Email client"
  homepage "https://superhuman.com/"

  livecheck do
    url "https://storage.googleapis.com/download.superhuman.com/supertron-update/latest-mac.yml"
    strategy :electron_builder
  end

  app "Superhuman.app"

  zap trash: [
    "~/Library/Application Support/Superhuman",
    "~/Library/Caches/com.superhuman.electron",
    "~/Library/Caches/com.superhuman.electron.helper",
    "~/Library/Caches/com.superhuman.electron.ShipIt",
    "~/Library/Caches/Superhuman",
    "~/Library/Logs/Superhuman",
    "~/Library/Preferences/com.superhuman.electron.plist",
    "~/Library/Preferences/com.superhuman.electron.helper.plist",
    "~/Library/Preferences/com.superhuman.mail.plist",
  ]
end
