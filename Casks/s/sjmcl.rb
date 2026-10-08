cask "sjmcl" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".dmg", linux: "_portable"

  version "1.3.2"
  sha256 arm:          "d8096d3b84e251e4756686ac1bd35aa45180ecbd9942ab4fedb4399bd605ca7f",
         intel:        "01763285443e67dc120a29f77c06025bc5357c97e1ce6102de06d6c2a45f0615",
         arm64_linux:  "82189322ccda153c9a5c173db37d458f49eedceb0bd2899120cdc7ac7c42bdef",
         x86_64_linux: "e8d5b599bda5be23ad4479d53e4c7327f6e3db28ce4355fe0b551e92dcf3e21c"

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
