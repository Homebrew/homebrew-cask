cask "sysdig-inspect" do
  version "0.10.2"
  sha256 "eb19bf4f46a85bbeb4888739668d02a1b860bcd99b1a27011e5cb92426c81f03"

  url "https://github.com/draios/sysdig-inspect/releases/download/#{version}/sysdig-inspect-mac-x86_64.zip"
  name "Sysdig Inspect"
  desc "Interface for container troubleshooting and security investigation"
  homepage "https://github.com/draios/sysdig-inspect"

  livecheck do
    url :url
    strategy :github_latest
  end

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
