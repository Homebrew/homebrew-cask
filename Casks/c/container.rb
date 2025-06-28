cask "container" do
  version "0.2.0"
  sha256 "689108cba2249c10ef33b20e86797f0b8c67afb28956080926399a8eaa0776c5"

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
