cask "container" do
  version "0.5.0"
  sha256 "60387a6c85947359ae5ea12acb467a82f2d91ebdcc43082cb811c654d6356438"

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
