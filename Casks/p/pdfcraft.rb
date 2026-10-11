cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.6.0"
  sha256 arm:          "5855e893cb0d406b1aef6ded5dee314f2cd72b783ab82e57c43f2839c3307b0a",
         intel:        "5855e893cb0d406b1aef6ded5dee314f2cd72b783ab82e57c43f2839c3307b0a",
         arm64_linux:  "7bc61400429a2e37db6d5185c150a8dd793c2590ac3db9fcd9dba44da8dc59e4",
         x86_64_linux: "17314af5443f581f4516deaefdabc1e70f83199a61412a10deaf673adaef028c"

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
