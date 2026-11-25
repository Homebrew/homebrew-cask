cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.22.0"
  sha256 arm:          "ad45ca52a793c7cda1bae1acb6757b5ee12f07bfaec22ce4344e5e5460340634",
         intel:        "ad45ca52a793c7cda1bae1acb6757b5ee12f07bfaec22ce4344e5e5460340634",
         arm64_linux:  "7ede1c280a5b27e9ae32523fe79de4aeb7d8f42f15fbc8b8569719ddbef9fa9d",
         x86_64_linux: "771f61b07aaf8cc17e73cb1f93fbe88526f27b0aa82ff32d0710e2c375f49248"

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
