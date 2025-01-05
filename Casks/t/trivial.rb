cask "trivial" do
  version "1.0.10"
  sha256 "21f9b6a83f2eaa7c6f36c717b09723d4f66ae4d359b06a9fbf2c75fc244e1c84"

  url "https://download.decisivetactics.com/downloads/trivial/Trivial_#{version}.zip"
  name "Trivial"
  desc "Simple file transfer server supporting many protocols"
  homepage "https://www.decisivetactics.com/products/trivial/"

  livecheck do
    url "https://api.decisivetactics.com/api/v1/public/appcast?app=trivial&v=1"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Trivial.app"

  uninstall launchctl: "com.decisivetactics.trivial-server",
            delete:    [
              "/Library/Application Support/com.decisivetactics.trivial",
              "/Library/LaunchDaemons/com.decisivetactics.trivial-server.plist",
            ]

  zap trash: [
    "~/Library/Caches/com.decisivetactics.trivial",
    "~/Library/HTTPStorages/com.decisivetactics.trivial",
    "~/Library/Preferences/com.decisivetactics.trivial.plist",
  ]
end
