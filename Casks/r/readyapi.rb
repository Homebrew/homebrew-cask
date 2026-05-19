cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "4.0.1"
  sha256 arm:   "d12eb87e5a48a6e58bd3b6a124950e2461d562ab9e9a10d8d2449554661affc1",
         intel: "c2358257ec7ee7b07ba6d77c4b3d1bff7b71a31cdd4a3d235912aa35036cd206"

  url "https://dl.eviware.com/ready-api/#{version}/ReadyAPI-#{arch}-#{version}.dmg",
      verified: "dl.eviware.com/ready-api/"
  name "ReadyAPI Desktop"
  desc "Automated API testing platform"
  homepage "https://smartbear.com/product/ready-api/"

  livecheck do
    url "https://support.smartbear.com/readyapi/docs/en/what-s-new/version-history.html"
    regex(/>\s*Ready(?:!\s+)?API\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  installer script: {
    executable: "ReadyAPI-#{version}.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall delete: [
    "/Applications/ReadyAPI-#{version}.app",
    "~/Desktop/ReadyAPI #{version}",
  ]

  zap trash: [
    "~/Library/Application Support/ReadyAPI-#{version}",
    "~/Library/Preferences/com.smartbear.ready.plist",
  ]
end
