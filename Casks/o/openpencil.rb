cask "openpencil" do
  arch arm: "aarch64", intel: "x64"

  version "0.17.0"
  sha256 arm:          "a8d90e57335c05178e26c939e616f512d8a330a3b41bf6ea0813dbafcf7cb315",
         intel:        "7c570aa1c20e67ff77bc5d0d4669c651ad2f2cf50d1cfeffc249af22be17bd09",
         x86_64_linux: "43da3dbd7a223a103692dd2d9193a86f8ddcb3db7577bd373949aae8455e94fc"

  on_macos do
    url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_#{arch}.app.tar.gz"

    depends_on macos: :ventura

    app "OpenPencil.app"

    zap trash: [
      "~/Library/Application Support/net.dannote.open-pencil",
      "~/Library/Caches/net.dannote.open-pencil",
      "~/Library/Preferences/net.dannote.open-pencil.plist",
      "~/Library/Saved Application State/net.dannote.open-pencil.savedState",
    ]
  end
  on_linux do
    url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_#{version}_amd64.AppImage"

    depends_on arch: :x86_64

    app_image "OpenPencil_#{version}_amd64.AppImage", target: "OpenPencil.AppImage"

    zap trash: [
      "~/.local/share/applications/OpenPencil-handler.desktop",
      "~/.local/share/net.dannote.open-pencil",
    ]
  end

  name "OpenPencil"
  desc "Open-source design editor compatible with Figma"
  homepage "https://openpencil.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
