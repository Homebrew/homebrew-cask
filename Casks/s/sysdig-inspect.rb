cask "sysdig-inspect" do
  version "0.10.1"
  sha256 "a1e0c370c171d2e2e97fe8cc1ef27cde3ee790ef2058c713ed70dd95755bb040"

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
