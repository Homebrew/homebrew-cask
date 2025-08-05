cask "devkinsta" do
  arch arm: "arm64", intel: "x64"

  version "2.13.4"
  sha256 arm:   "7010e6e67e767fdc141966074f592a92853322ea3395dda937f4bef1ba377045",
         intel: "39a4f3e9eb0622d110eb27a150367da815e2b8cc1e60cd3110c0212087dd4f21"

  url "https://devkinsta-updates.s3.amazonaws.com/DevKinsta-#{version}-#{arch}.zip",
      verified: "devkinsta-updates.s3.amazonaws.com/"
  name "DevKinsta"
  desc "Local WordPress Development Suite by Kinsta"
  homepage "https://devkinsta.com/"

  livecheck do
    url "https://devkinsta-updates.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "DevKinsta.app"

  zap trash: [
    "~/Library/Application Support/DevKinsta",
    "~/Library/Logs/DevKinsta",
    "~/Library/Preferences/org.kinsta.DevKinsta.plist",
    "~/Library/Saved Application State/org.kinsta.DevKinsta.savedState",
  ]
end
