cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "3.66.0"
  sha256 arm:   "0153c6fc68dbcb9be8c6894e3d8cab8271e814c6b70da64172b557ae4d96d89c",
         intel: "cfd93c527e76e4cc0d20e15f96ee2f904b92989e18eb7d694317a4968c9ccae1"

  url "https://dl.eviware.com/ready-api/#{version}/ReadyAPI-#{arch}-#{version}.dmg",
      verified: "dl.eviware.com/ready-api/"
  name "ReadyAPI Desktop"
  desc "Automated API testing platform"
  homepage "https://smartbear.com/product/ready-api/"

  livecheck do
    url "https://support.smartbear.com/readyapi/docs/en/what-s-new/version-history.html"
    regex(/>\s*Ready(?:!\s+)?API\s+v?(\d+(?:\.\d+)+)/i)
  end

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
