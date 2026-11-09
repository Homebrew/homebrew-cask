cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.20.0"
  sha256 arm:          "f44bea1466fcb6902effbad7e824fe59a70077c73ebd977e14e166585c447ce6",
         intel:        "f44bea1466fcb6902effbad7e824fe59a70077c73ebd977e14e166585c447ce6",
         arm64_linux:  "bbd80a80be5fbee7d602f3b64d9263d8a6ffeba6a99f40ed88204ff6bc1653c3",
         x86_64_linux: "027e62299b82353600373e6ca74c441213ef5406e70d27f7f1aef7e05a78878d"

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
