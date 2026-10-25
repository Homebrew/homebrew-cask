cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.14.0"
  sha256 arm:          "f0bddea3f0d711470d95f714b23ccce61c38b2bbcca821d397ce8dbb0564cf74",
         intel:        "f0bddea3f0d711470d95f714b23ccce61c38b2bbcca821d397ce8dbb0564cf74",
         arm64_linux:  "36a572f69da55d0405d2f723b9dd021f3bde849c5739b98edcc350078f26e2a0",
         x86_64_linux: "a115132eb9aa5eed510a4e85aa5785c81e6690769203415506a1a4b2dd011190"

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
