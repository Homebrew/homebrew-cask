cask "sjmcl" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".dmg", linux: "_portable"

  version "1.2.0"
  sha256 arm:          "d44808704f44c285287ae549bfb51a08afbb77d3f7101479d08ffbca825fe428",
         intel:        "fbe480282ba149b33a27c6dc3e2b397b952d33e23cff57950da16f487f3dbe42",
         arm64_linux:  "379cb2a1c5f250ff8af8322c392f153664be06cfff7ec730ee200c98cc5bd8e8",
         x86_64_linux: "ef8eafd3faa94439fedc36832cfe4e95d2f6a7212fcad79bc249baba61203a8a"

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
