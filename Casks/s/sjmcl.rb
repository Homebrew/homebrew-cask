cask "sjmcl" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".dmg", linux: "_portable"

  version "1.3.1"
  sha256 arm:          "815fff70148c26b113218af9fb88c010f80ea67dc1c506b43943dce835bcaefd",
         intel:        "796f35e0f569c2583ec8bc6fe325775d05b16988695a43e92efc1cfa69f3dd9e",
         arm64_linux:  "754f32cbb22ad0a5ba446e97fbc1b5c853c39827753ef37eaa722b805a5a4d72",
         x86_64_linux: "714979b974df76a51e321135847cb2cecbb5798719fa6b5d0cd066094beaf5ee"

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
