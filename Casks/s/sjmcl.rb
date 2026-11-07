cask "sjmcl" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".dmg", linux: "_portable"

  version "1.4.1"
  sha256 arm:          "475ca26358be279d47738933859c59fb623c1fa6ff55366575c55c32f6c739ed",
         intel:        "56b4a51ee2b1a5b4606f8465b27133cbd78d351d42de83f3e990b282d855aafe",
         arm64_linux:  "9a75f91e3d8ebed08fd3a7d8ad64c0c06ebb3c9a98a31a6effc5fa02b4864118",
         x86_64_linux: "b5b15d0d7a94dff77829777c9ce7fc18ebee5fc6685a4b98d75bcc114ea90c6d"

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

  livecheck do
    url :url
    strategy :github_latest
  end
end
