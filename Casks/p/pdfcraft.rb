cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.7.1"
  sha256 arm:          "cafa51b2bbd2fa7fd532cb38cafec54e988dd37c81bc47c26e5f08e472dc92bf",
         intel:        "cafa51b2bbd2fa7fd532cb38cafec54e988dd37c81bc47c26e5f08e472dc92bf",
         arm64_linux:  "3d36374bc10f541a92142ba3d884a827bbdd8ac88932ce20c26ccc52b1727f84",
         x86_64_linux: "ae5c879bb326d0e91a241e9f9c6c17608ef766c005c66c2d7280270107bf635a"

  on_macos do
    app "PdfCraft.app"

    zap trash: "~/Library/Application Support/PdfCraft"
  end
  on_linux do
    app_image "pdfcraft-#{version}-linux-#{arch}.AppImage", target: "PdfCraft.AppImage"

    zap trash: "~/.local/share/pdfcraft"
  end

  url "https://github.com/storytold/pdfcraft/releases/download/v#{version}/pdfcraft-#{version}-#{url_end}"
  name "PdfCraft"
  desc "PDF editor"
  homepage "https://getartcraft.com/apps/pdfcraft"
end
