cask "sjmcl@nightly" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".dmg", linux: "_portable"

  version "20261011"
  sha256 arm:          "c70fc766f5bedd1c658fcd4931af243c3d2d1161ed5f970b0645ac9cb26b694b",
         intel:        "0c239e8a5e5c185b0a4e55dcc62f2a4ab7f098a93547962d5adb71fc3513d8bf",
         arm64_linux:  "1abc89281c0b919bab12d0bce8eada07371eee0b2910dc447b9138d9d9a00e01",
         x86_64_linux: "6ebaae0fcf54b6a0b3221034de9d6186ae3be311b462bb130da232f6a85e4fdc"

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
    binary "SJMCL_nightly_#{version}_linux_#{arch}_portable", target: "sjmcl"

    zap trash: [
      "~/.cache/SJMCL",
      "~/.config/SJMCL",
      "~/.local/share/SJMCL",
    ]
  end

  url "https://github.com/UNIkeEN/SJMCL/releases/download/nightly/SJMCL_nightly_#{version}_#{os}_#{arch}#{url_end}"
  name "SJMCL"
  desc "Minecraft launcher built with the community"
  homepage "https://mc.sjtu.cn/sjmcl/"

  livecheck do
    url :url
    regex(/^SJMCL Nightly\s*\((\d+)\)$/i)
    strategy :github_releases do |json, regex|
      json.filter_map do |release|
        next if release["draft"] || release["tag_name"] != "nightly"

        release["name"]&.[](regex, 1)
      end
    end
  end
end
