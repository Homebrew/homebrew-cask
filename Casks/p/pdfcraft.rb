cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.18.1"
  sha256 arm:          "55f84be56388d69f24df22522f6d424f8d8e69529db669ce08ea198455e08ceb",
         intel:        "55f84be56388d69f24df22522f6d424f8d8e69529db669ce08ea198455e08ceb",
         arm64_linux:  "8f30be4362ba5119f6388f948b0b88386977568736ffc8961cf2ceee0b41b2d4",
         x86_64_linux: "4ce61a8f4f1374591e7468f07a47be542594c1e31d660d9a5d539ddbe85010c6"

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
