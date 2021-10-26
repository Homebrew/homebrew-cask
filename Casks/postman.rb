cask "postman" do
  url_arch = Hardware::CPU.intel? ? "osx64" : "osx_arm64"
  livecheck_arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "9.1.2"
    sha256 "1d8badc2b848a52549eafe8ac03bb85577a44c4ae9aae818b557314f62f698ca"
  else
    version "9.0.7"
    sha256 "33a3b4686ddf873cfefa9301b763da411265c94ccd880b2607e7177129ffc8f2"
  end

  url "https://dl.pstmn.io/download/version/#{version}/#{url_arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/api/version/"
    regex(/Postman[._-]osx[._-](\d+(?:\.\d+)*)[._-]#{livecheck_arch}\.zip/i)
  end

  auto_updates true

  app "Postman.app"

  zap trash: [
    "~/Library/Application Support/Postman",
    "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
    "~/Library/Caches/Postman",
    "~/Library/Caches/com.postmanlabs.mac",
    "~/Library/Caches/com.postmanlabs.mac.ShipIt",
    "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
    "~/Library/Preferences/com.postmanlabs.mac.plist",
    "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
  ]
end
