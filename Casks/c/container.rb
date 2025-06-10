cask "container" do
  version "0.1.0"
  sha256 "9e8fb791394a6f535b37b61474132b53ebe0a4a351c2a8f3a37d774580697ea1"

  url "https://github.com/apple/container/releases/download/#{version}/container-#{version}-installer-signed.pkg"
  name "container"
  desc "Create and run Linux containers using lightweight virtual machines"
  homepage "https://github.com/apple/container"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  pkg "container-#{version}-installer-signed.pkg"

  uninstall pkgutil: "com.apple.container-installer"

  zap trash: "~/Library/Application Support/com.apple.container"
end
