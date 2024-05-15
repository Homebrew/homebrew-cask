cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "3.53.0"
  sha256 arm:   "04c0d83e3239c56d76fbcc30c9cf2785af9bcec60f0e46221f67ce9aa9d8739c",
         intel: "3cae8ea36be8f9fa81fb0e8580fee753e1d47862b0ca91e177923446df1f1df4"

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
