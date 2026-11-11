cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.21.0"
  sha256 arm:          "c18c13ea4edaefdbf3cf231f851231a8ae51cf1507772eda693b59174cbaa6af",
         intel:        "c18c13ea4edaefdbf3cf231f851231a8ae51cf1507772eda693b59174cbaa6af",
         arm64_linux:  "f3a677bdbc487aba3881f3af93be50a45310c784db8d08992d0c9e7b552e55cc",
         x86_64_linux: "44980b57de0fe8634be5609d6d7440718342c9b861fe3ff21512a08d7b73c347"

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
