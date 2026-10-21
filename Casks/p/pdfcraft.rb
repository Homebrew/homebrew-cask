cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.10.1"
  sha256 arm:          "910434879121f5c74b846e0b149a5537958d29684edc810037443af8e40e6397",
         intel:        "910434879121f5c74b846e0b149a5537958d29684edc810037443af8e40e6397",
         arm64_linux:  "79c76bab95bc5e5bfd3849bf44d3048d9125afc00fcf9c515a9a9495c06864d2",
         x86_64_linux: "e337b718626adb34c20328feba0456352a58f8156ada9b469cc5f5dba2352e56"

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
