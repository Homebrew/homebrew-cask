cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.1"
  sha256 arm:          "de7bc22fb363c57a350927f5ca009bd444b19993bdeb2863b564e99f3fbae230",
         intel:        "de7bc22fb363c57a350927f5ca009bd444b19993bdeb2863b564e99f3fbae230",
         arm64_linux:  "8fdd9f7f9f0e38fdef7a7c9d30498451677f481a38e1d184b18a5df85799edf7",
         x86_64_linux: "9586942dd631b96b4c5522988e9e80213907b8022ffafbca624a3fc11ae7a9e9"

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
