cask "koreader" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026.07.1"
  sha256 arm64_linux:  "fff2394e2d896f4df61501d89c1ae7f53903c34433b5e587551ed2279f90ab10",
         x86_64_linux: "e60ed106cf4e824d50394a259b3aa6c46fb1daee189df73a1734e5732b5dc245"

  url "https://github.com/koreader/koreader/releases/download/v#{version}/koreader-v#{version}-#{arch}.AppImage"
  name "KOReader"
  desc "Document viewer for e-ink devices"
  homepage "https://koreader.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :linux

  app_image "koreader-v#{version}-#{arch}.AppImage", target: "KOReader.AppImage"

  # No zap stanza required
end
