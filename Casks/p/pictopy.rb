cask "pictopy" do
  arch arm: "aarch64"

  version "1.2.0"
  sha256 "c01f4f45f3f7e987e9b06e7ce6852d4eb1dfd96730d10bf4319156d4ab67895d"

  url "https://github.com/AOSSIE-Org/PictoPy/releases/download/v#{version}/PictoPy_#{arch}.app.tar.gz"
  name "PictoPy"
  desc "AI-powered desktop photo gallery"
  homepage "https://github.com/AOSSIE-Org/PictoPy"

  depends_on arch: :arm64
  depends_on :macos

  app "PictoPy.app"

  zap trash: [
    "~/Library/Application Support/org.aossie.pictopy",
    "~/Library/Application Support/PictoPy",
    "~/Library/Caches/org.aossie.pictopy",
    "~/Library/Saved Application State/org.aossie.pictopy.savedState",
    "~/Library/WebKit/org.aossie.pictopy",
  ]
end
