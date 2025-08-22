cask "ipaverse" do
  version "1.0.0"
  sha256 "e3e28f60eb9bfc000977e6e5f0e1b455854daebd034770567eefae537e15d4f4"

  url "https://github.com/bahattinkoc/ipaverse/releases/download/v#{version}/ipaverse.dmg"
  name "ipaverse"
  desc "Modern macOS app for downloading and managing iOS apps from the App Store"
  homepage "https://github.com/bahattinkoc/ipaverse"

  depends_on macos: ">= :sonoma"

  app "ipaverse.app"

  zap trash: [
    "~/Library/Preferences/com.ipaverse.plist",
    "~/Library/Application Support/ipaverse",
    "~/Library/Caches/ipaverse"
  ]
end
