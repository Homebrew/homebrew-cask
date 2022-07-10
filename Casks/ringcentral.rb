cask "ringcentral" do
  arch = Hardware::CPU.intel? ? "" : "-arm"

  version "22.2.22"

  if Hardware::CPU.intel?
    sha256 "6ca9570a066f8b4d05261445e9a0792bc979978e84c9e5d849890cec27b351c4"
  else
    sha256 "ce1fb8ba48c93e65fca450667786b4b98aa000ff274ca890e3de36efdabcc22b"
  end

  url "https://app.ringcentral.com/download/RingCentral#{arch}.pkg"
  name "RingCentral"
  desc "Team messaging, video meetings, and business phone"
  homepage "https://www.ringcentral.com/download.html"

  livecheck do
    url "https://app.ringcentral.com/download/latest-mac.yml"
    strategy :electron_builder
  end

  pkg "RingCentral#{arch}.pkg"

  uninstall delete:  "/Applications/RingCentral.app",
            quit:    "RingCentral",
            pkgutil: "com.ringcentral.glip"

  zap trash: [
    "~/Library/Application Support/RingCentral",
    "~/Library/Logs/RingCentral",
    "~/Library/Preferences/com.ringcentral.glip.plist",
    "~/Library/Saved Application State/com.ringcentral.glip.savedState",
  ]
end
