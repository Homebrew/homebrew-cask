cask "sjmcl" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".dmg", linux: "_portable"

  version "1.4.0"
  sha256 arm:          "726a4ecbc94835d34b8a4d132a301296c0e87b7631f321fd40d3a158e25e9370",
         intel:        "b6fdc6a77bbd3a043b5338117ee2a92a3302f49eaa51ccaf69d8eb21d6fac543",
         arm64_linux:  "f2afc4b0d22e0ffba82cccfa1ea1be6efaaadbdb20e940204f5bb52c1e86b9b7",
         x86_64_linux: "40ddae569e0e7ab56afe15c05e0441c12b6bafd61d96c28fb4c82c62df5562d4"

  on_macos do
    app "SJMCL.app"

    zap trash: [
      "~/Library/Application Support/SJMCL",
      "~/Library/Caches/SJMCL",
      "~/Library/Logs/SJMCL",
      "~/Library/WebKit/SJMCL",
    ]
  end
  on_linux do
    binary "SJMCL_#{version}_linux_#{arch}_portable", target: "sjmcl"

    zap trash: [
      "~/.cache/SJMCL",
      "~/.config/SJMCL",
      "~/.local/share/SJMCL",
    ]
  end

  url "https://github.com/UNIkeEN/SJMCL/releases/download/v#{version}/SJMCL_#{version}_#{os}_#{arch}#{url_end}"
  name "SJMCL"
  desc "Minecraft launcher built with the community"
  homepage "https://mc.sjtu.cn/sjmcl/"
end
