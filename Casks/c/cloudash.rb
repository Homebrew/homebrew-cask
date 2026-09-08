cask "cloudash" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "1.22.1"

  on_macos do
    sha256 arm:   "94ce30488721f5511433994ed4fbc045fe6b4ec54b06e37f23cb343b19b33556",
           intel: "73451741b9ddf1d26eecd2ae21d92602e2c2eae414eab6329243fa75cd18428c"

    app "Cloudash.app"

    zap trash: [
      "~/Library/Application Support/cloudash",
      "~/Library/Logs/Cloudash",
      "~/Library/Preferences/dev.cloudash.cloudash.plist",
      "~/Library/Saved Application State/dev.cloudash.cloudash.savedState",
    ]
  end
  on_linux do
    sha256 "6f6e7d88c42710375e2775766a465fec88448ed8610b69e323836d25201048b1"

    depends_on arch: :x86_64

    app_image "Cloudash-#{version}.AppImage", target: "Cloudash.AppImage"
  end

  url "https://github.com/cloudashdev/cloudash/releases/download/#{version}/Cloudash-#{version}#{url_end}"
  name "Cloudash"
  desc "Monitoring and troubleshooting for serverless architectures"
  homepage "https://cloudash.dev/"
end
