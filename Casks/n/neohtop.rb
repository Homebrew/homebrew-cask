cask "neohtop" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "silicon-", intel: "intel-")

  version "1.3.0"
  sha256 arm:          "f631f1cd7aea3d6536ea790bf8bd75ddbcbb1461bbff1851e129db6d50487c53",
         intel:        "9fb2f50ec27ae8835f9b56739a13000cd28aaf8ed6d85e01cff6abb585ebe9c6",
         arm64_linux:  "9e0fcaa5eb226a01408e4bb07e4d3a52c56e55d1b97a03dedad09f720f29e4fe",
         x86_64_linux: "70be10994587c8e85235703ee4b0e134d4d865c32b0b8bb02b6153135bcfb56a"

  on_macos do
    app "NeoHtop.app"

    zap trash: [
      "~/Library/Application Support/com.neohtop.dev",
      "~/Library/Caches/com.neohtop.dev",
      "~/Library/WebKit/com.neohtop.dev",
    ]
  end
  on_linux do
    app_image "NeoHtop_#{version}_#{arch}.AppImage", target: "NeoHtop.AppImage"

    zap trash: [
      "~/.cache/NeoHtop",
      "~/.config/com.neohtop.dev",
      "~/.local/share/com.neohtop.dev",
      "~/.local/share/NeoHtop",
    ]
  end

  url "https://github.com/Abdenasser/neohtop/releases/download/v#{version}/#{url_arch}NeoHtop_#{version}_#{arch}.#{os}"
  name "NeoHtop"
  desc "Htop on steroids"
  homepage "https://abdenasser.github.io/neohtop/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
