cask "gisto" do
  version "2.0.0-1"

  on_arm do
    sha256 "e53304e5bc6ab8ef3a420bf4d02e5507cbb58d3e7993c221cd5a95f7c4ef9643"

    url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_aarch64.dmg",
        verified: "github.com/Gisto/Gisto"
  end
  on_intel do
    sha256 "f281a9b63ddc1e7660a0c99333145616e377557d95ffb8bc64f29e7db3a6150e"

    url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_x64.dmg",
        verified: "github.com/Gisto/Gisto"
  end

  name "Gisto"
  desc "Snippets management desktop application"
  homepage "https://www.gisto.org"

  app "Gisto.app"

  zap trash: [
    "~/Library/Application Support/Gisto",
    "~/Library/Caches/com.gistoapp.gisto2",
    "~/Library/Logs/Gisto",
    "~/Library/Preferences/com.gistoapp.gisto2.helper.plist",
    "~/Library/Preferences/com.gistoapp.gisto2.plist",
    "~/Library/Saved Application State/com.gistoapp.gisto2.savedState",
  ]
end
