cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "3.55.0"
  sha256 arm:   "86b74b4e9874e0fb4e9fb5715bdd5eef621a5968e8aca7a4c95a03a958d1f536",
         intel: "3b31dfad62f6fce42a6d002a7e970f9272fba34b161c3bb24795d90dbb8fca0e"

  url "https://dl.eviware.com/ready-api/#{version}/ReadyAPI-#{arch}-#{version}.dmg",
      verified: "dl.eviware.com/ready-api/"
  name "ReadyAPI Desktop"
  desc "Automated API testing platform"
  homepage "https://smartbear.com/product/ready-api/overview/"

  livecheck do
    url "https://support.smartbear.com/readyapi/docs/general-info/whats-new.html"
    regex(/(\d+(?:\.\d+)+)\s\(latest\sversion\)/i)
  end

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
