cask "hey-desktop" do
  arch arm: "-arm64"

  version "1.3.7"
  sha256 arm:   "39e1342c4f6aee1b4bb5202ffe723828e15a36f77869f89d9a05633c7b90780f",
         intel: "6093f7917db92702eacc7753e160f220724a9c4115013301a510c4734db61a2e"

  url "https://hey.com/desktop/HEY-#{version}#{arch}-mac.zip"
  name "HEY"
  desc "Access the HEY email service"
  homepage "https://hey.com/"

  # This file is served with a `Content-Encoding: aws-chunked` header when
  # compression is requested but that causes curl to error because it doesn't
  # understand what decompression to apply.
  livecheck do
    url "https://hey.com/desktop/latest-mac.yml",
        compressed: false
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "HEY.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
