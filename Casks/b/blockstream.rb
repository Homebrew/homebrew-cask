cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.5.0"

  on_macos do
    sha256 arm:   "fe62273a13632a40ff1864ef6b29e7b618bb53648a98977012e1585a581fde6b",
           intel: "7d4b73b87956bac705661b19b99222d318e2575c601de0366a3987a5d9eba85b"

    depends_on macos: :ventura

    app "Blockstream.app"

    zap trash: [
      "~/Library/Application Support/Blockstream/Green",
      "~/Library/Caches/Blockstream/Green",
    ]
  end
  on_linux do
    sha256 "845ff44bbe859d9f8321e980a07517e43e5332a939ad159ecc3ba98f2a8bcf30"

    depends_on arch: :x86_64

    app_image "Blockstream-#{arch}.AppImage", target: "Blockstream.AppImage"
  end

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/Blockstream-#{arch}.#{url_end}",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
