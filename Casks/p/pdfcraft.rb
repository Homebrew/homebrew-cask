cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.4.0"
  sha256 arm:          "740da4900e8bc4957382ef3ef37b544e19dee94bd704f7dc49a1b306e254fa10",
         intel:        "740da4900e8bc4957382ef3ef37b544e19dee94bd704f7dc49a1b306e254fa10",
         arm64_linux:  "fd43497d05433b0e7070b91c0553e2cddf5a8872d671f490372ffc722fee47ca",
         x86_64_linux: "e21ce7de49910acc8f032a4b906141da42b39002383fb9ef33a9d86dbbec05d6"

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
