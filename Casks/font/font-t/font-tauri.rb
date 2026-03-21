cask "font-tauri" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tauri/Tauri-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tauri"
  homepage "https://fonts.google.com/specimen/Tauri"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tauri",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tauri-Regular.ttf"

  # No zap stanza required
end
