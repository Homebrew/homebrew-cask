cask "balena-cli" do
  version "12.50.2"
  sha256 "6fad98d9410e254566c7122337dc59efb99fcd05cc6d4d685009e8d56e045cac"

  url "https://github.com/balena-io/balena-cli/releases/download/v#{version}/balena-cli-v#{version}-macOS-x64-installer.pkg"
  name "Balena CLI"
  desc "Official Balena CLI tool"
  homepage "https://github.com/balena-io/balena-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "balena-cli-v#{version}-macOS-x64-installer.pkg"

  uninstall pkgutil: "io.balena.cli"
end
