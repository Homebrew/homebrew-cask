cask "figcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.8.0"
  sha256 arm:          "4f5cadd60cd4d6512ec1144f9c3aaffc71ea2a29c20d87d51bad79d087aff7c1",
         intel:        "4f5cadd60cd4d6512ec1144f9c3aaffc71ea2a29c20d87d51bad79d087aff7c1",
         arm64_linux:  "cf23a9da7642dd64acd7970a428fccd50e1015664ea1e19b5dc9368bc97cce94",
         x86_64_linux: "ecf1cf8ee60a150da4a655252ca17fefce725e2d44027db36a60994319927bf2"

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
