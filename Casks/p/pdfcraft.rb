cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.5.0"
  sha256 arm:          "36bfd4fb1d6fd22321f92263dbc97b41cc266b5275f7aac63064464b6be982cd",
         intel:        "36bfd4fb1d6fd22321f92263dbc97b41cc266b5275f7aac63064464b6be982cd",
         arm64_linux:  "efe0a3a3bb03ca9665711d2f2eecb6eab7e7cebedcf632ff8351531f46d06f51",
         x86_64_linux: "723c16730ebd72cff12b40e648ed935900f3acb590b22d036e2af13a28ce6f45"

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
