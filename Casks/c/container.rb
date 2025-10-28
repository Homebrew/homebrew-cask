cask "container" do
  version "0.6.0"
  sha256 "4462fa6bc118fab382e44afdcc77db32b607418e0bc80a4e50f7053f585a3866"

  url "https://github.com/apple/container/releases/download/#{version}/container-#{version}-installer-signed.pkg"
  name "container"
  desc "Create and run Linux containers using lightweight virtual machines"
  homepage "https://github.com/apple/container"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  pkg "container-#{version}-installer-signed.pkg"

  # container APIs aren't guaranteed to be backward compatible,
  # so we stop the system service to ensure no components are out of sync.
  # Ref: https://github.com/apple/container/issues/551#issuecomment-3246928923
  postflight do
    system_command "/usr/local/bin/container",
                   args: ["system", "stop"]
  end

  uninstall pkgutil: "com.apple.container-installer"

  zap trash: "~/Library/Application Support/com.apple.container"
end
