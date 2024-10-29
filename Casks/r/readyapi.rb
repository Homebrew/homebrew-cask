cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "3.56.0"
  sha256 arm:   "741d8d0dc1e7464e2066bec6fdb4a73e2f90bb6a72c3dd49d4109b0fca137ab8",
         intel: "370c4e07a007760c059274aad94dff6a628771f5ba97c0cf908d6fc74d8efbf7"

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
