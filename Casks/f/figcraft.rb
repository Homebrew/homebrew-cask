cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.10.0"
  sha256 arm:          "3c3f54cf75ad00f949b9782247165e653593e90f3f2f3fdd5bba8fb21b020cbf",
         intel:        "3c3f54cf75ad00f949b9782247165e653593e90f3f2f3fdd5bba8fb21b020cbf",
         arm64_linux:  "d2b44173c8892e00935bfe215697bd0846b70cce201e08418f8b2db84cfc267b",
         x86_64_linux: "28f8efe18779498e286ce93e9442058f0db17b4570e2cb92bf526c3e723484e9"

  on_macos do
    app "FigCraft.app"

    zap trash: "~/Library/Application Support/FigCraft"
  end
  on_linux do
    app_image "figcraft-#{version}-linux-#{arch}.AppImage", target: "FigCraft.AppImage"

    zap trash: "~/.config/FigCraft"
  end

  url "https://github.com/storytold/figcraft/releases/download/v#{version}/figcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "FigCraft"
  desc "Interface design and prototyping tool"
  homepage "https://getartcraft.com/apps/figcraft"
end
