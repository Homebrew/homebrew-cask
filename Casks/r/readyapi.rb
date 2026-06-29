cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "4.1.0"
  sha256 arm:   "c8eff4947e459aee32a1200d4055469f4968a0db5cf2e3771dc452d6bc90f84f",
         intel: "a81b33ac70bab1b176d2bdca759446def5254ecb1012c0c03a7c7d721b1aa208"

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
    executable: "ReadyAPI #{version} Installer.app/Contents/MacOS/JavaApplicationStub",
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
