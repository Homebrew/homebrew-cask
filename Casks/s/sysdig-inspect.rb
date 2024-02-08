cask "sysdig-inspect" do
  version "0.9.0"
  sha256 "be0c56bd2eaa751b0babaf5f8947b57bd278ed2447caab9e75634606cb3465e3"

  url "https://github.com/draios/sysdig-inspect/releases/download/#{version}/sysdig-inspect-mac-x86_64.zip"
  name "Sysdig Inspect"
  desc "Interface for container troubleshooting and security investigation"
  homepage "https://github.com/draios/sysdig-inspect"

  app "Sysdig Inspect-darwin-x64/Sysdig Inspect.app"

  zap trash: [
    "~/Library/Application Support/sysdig-inspect",
    "~/Library/Logs/Sysdig Inspect",
    "~/Library/Preferences/com.electron.sysdig-inspect.plist",
    "~/Library/Saved Application State/com.electron.sysdig-inspect.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
