cask "open-webui" do
  arch arm:   on_system_conditional(macos: "-arm64", linux: "_arm64"),
       intel: on_system_conditional(macos: "-x64", linux: "_x86_64")
  os macos: "dmg", linux: "AppImage"

  version "0.1.4"
  sha256 arm:          "91265013455cc699f94adc4d8f91167ca411a770ff88e1e0792c19b50c2b4af3",
         intel:        "38837952d6cc5e28d6f262a51db5161a6f43b6b504cfadb3e9e5a96da5655fe8",
         arm64_linux:  "b2162b13576bf4f227bc5f831172c92ae7968ac088d2aea8fae4b9177b3b6494",
         x86_64_linux: "ae865e251579183b1bf6385a3a07855ed06d9a2445e58453788143da5d61f9a8"

  on_macos do
    depends_on macos: :ventura

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
