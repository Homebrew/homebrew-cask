cask "cleanmymac-cli" do
  version "1.0.0"
  sha256 "f22dcf72e26a680e16e7d4deb0f36c0588f5beb0f7a892248e0ddacf68fb737a"

  url "https://cli.cleanmymac.com/#{version}/CleanMyMac-CLI-#{version}.zip",
      verified: "cli.cleanmymac.com/"
  name "CleanMyMac CLI"
  desc "Command-line interface for CleanMyMac"
  homepage "https://github.com/MacPaw/cleanmymac-cli"

  livecheck do
    url "https://cli.cleanmymac.com/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :big_sur

  app "CleanMyMac_5_CLI.app"
  binary "CleanMyMac_5_CLI.app/Contents/MacOS/CleanMyMac_5_CLI", target: "cleanmymac"
  binary "CleanMyMac_5_CLI.app/Contents/MacOS/CleanMyMac_5_CLI", target: "cmm"

  zap trash: [
    "~/Library/Application Scripts/S8EX82NJP6.com.macpaw.CleanMyMac5.CLI",
    "~/Library/Group Containers/S8EX82NJP6.com.macpaw.CleanMyMac5.CLI",
  ]
end
