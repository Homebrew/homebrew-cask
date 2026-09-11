cask "open-webui" do
  arch arm:   on_system_conditional(macos: "-arm64", linux: "_arm64"),
       intel: on_system_conditional(macos: "-x64", linux: "_x86_64")
  os macos: "dmg", linux: "AppImage"

  version "0.0.20"
  sha256 arm:          "454fee910c872168b75f98bf676af4d15b21dfcc6b43a26dfadc94bd9ef10b97",
         intel:        "3d98d2d398f0f5388e1d85ffa487f2b5e9fc1540771aba02fa7bcabcbdf52e5b",
         arm64_linux:  "b96c55276da3e1d4bd6569fc977c56af855cbfd205c452e988d0a6c0bfbbc4e4",
         x86_64_linux: "2cd19ee9a7afc540d47131dfaef39dd55e75c64feebbf78810e0f22ab6f031e2"

  on_macos do
    depends_on macos: :monterey

    app "Open WebUI.app"

    zap trash: "~/Library/Application Support/open-webui"
  end
  on_linux do
    app_image "open-webui#{arch}.AppImage"

    zap trash: "~/.config/open-webui"
  end

  url "https://github.com/open-webui/desktop/releases/download/v#{version}/open-webui#{arch}.#{os}"
  name "Open WebUI"
  desc "Desktop application for Open WebUI"
  homepage "https://openwebui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
