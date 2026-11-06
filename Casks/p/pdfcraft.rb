cask "pdfcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.19.0"
  sha256 arm:          "8b41d907b1a030b4ba8df03b5eb969f7090f8f41ece23bcb799077f208a10c96",
         intel:        "8b41d907b1a030b4ba8df03b5eb969f7090f8f41ece23bcb799077f208a10c96",
         arm64_linux:  "9d51f26b59707c5442c83ec3796eb3387b9ee93b8dfefb3c3404fef5212aaadc",
         x86_64_linux: "7d6f5875a4d68cf1fd2be8db9f3053142c2507350c17f1841230ef26c22c0b36"

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
