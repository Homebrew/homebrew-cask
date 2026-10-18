cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.9.0"
  sha256 arm:          "116738045a68463eb1a465e6eaef2266902aac69aa1a15e4a1c1472c31d8abe9",
         intel:        "116738045a68463eb1a465e6eaef2266902aac69aa1a15e4a1c1472c31d8abe9",
         arm64_linux:  "eaf05dd1c458ce207e9d99fcd75e8a3e0c97136c25fbe7e90a50b86c767b3bbb",
         x86_64_linux: "f8568c87906d968461052f0b57097c0b84b70b37bf649c9b504d8c1eb7ad0cfa"

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
