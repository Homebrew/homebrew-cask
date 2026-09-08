cask "sjmcl" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".dmg", linux: "_portable"

  version "1.3.0"
  sha256 arm:          "8fe2c8b73954e39fcc7bcaaed3e5216f282382e49a914e8d4fd905c106b53d25",
         intel:        "1a8a9a871f48111f4bda15c0cfd39d0413cdf4a604ab45e850a8504e2301fc8e",
         arm64_linux:  "fc2dd163caa260d6873b3ac1674e61bb4f42643850d68194e1db29a3fe369243",
         x86_64_linux: "cfbc8be093d5352935666955e82ba07fac5f3f094989e556826210c2ce9b2cbc"

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
