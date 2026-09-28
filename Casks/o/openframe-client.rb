cask "openframe-client" do
  version "1.4.0"
  sha256 "21d4d22a91968360eb224379506429c7c484af9a6c335dfb8a1262c2a414034b"

  url "https://openframe.ai/v0/api/assets/download?agent=client&platform=macos&version=#{version}"
  name "OpenFrame Client"
  desc "Device agent for remote monitoring and management"
  homepage "https://openframe.ai/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true
  depends_on :macos

  installer script: {
    executable: "openframe-client",
    args:       ["install"],
    sudo:       true,
  }

  uninstall script: {
              executable:   "openframe-client",
              args:         ["uninstall"],
              sudo:         true,
              must_succeed: false,
            },
            delete: "/usr/local/bin/openframe-client"

  zap delete: [
    "/Library/Application Support/OpenFrame",
    "/Library/LaunchDaemons/com.openframe.client.plist",
    "/Library/Logs/OpenFrame",
  ]
end
