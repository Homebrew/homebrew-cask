cask "sysdig-inspect" do
  version "0.8.0"
  sha256 "4142059bf0a1ccc7935a798b31457b23d594e1c60ba7f36ce97a3a3b020609d1"

  url "https://github.com/draios/sysdig-inspect/releases/download/#{version}/sysdig-inspect-mac-x86_64.zip"
  name "Sysdig Inspect"
  desc "Interface for container troubleshooting and security investigation"
  homepage "https://github.com/draios/sysdig-inspect"

  app "Sysdig Inspect-darwin-x64/Sysdig Inspect.app"
end
