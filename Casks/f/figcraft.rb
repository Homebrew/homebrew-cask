cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.1"
  sha256 arm:          "03778bd82b3b1fdf59bc4301cd45e453e1355a7841dd155d47df1694a19a89e3",
         intel:        "03778bd82b3b1fdf59bc4301cd45e453e1355a7841dd155d47df1694a19a89e3",
         arm64_linux:  "4d06ad75bc18532ca2fd7173561ae31241384ddeaef117d2729b5374e0b8de0d",
         x86_64_linux: "f70bc23eea74acda75902e15c6426a436d6644a08340e53d4b637874279f5b87"

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
