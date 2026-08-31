cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.1"
  sha256 arm:   "3de89722e3b7f9348063112ede3a6eb3e989170af13a867eb1aad9257400df24",
         intel: "efe661b4a7dff267c7cbf49a708257f8f085a46c43162fc0892c79541b312d63"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on macos: :monterey

  app "Luxury Yacht.app"

  zap trash: [
    "~/Library/Application Support/luxury-yacht",
    "~/Library/Caches/com.wails.luxury-yacht",
    "~/Library/Preferences/com.wails.luxury-yacht.plist",
    "~/Library/WebKit/com.wails.luxury-yacht",
  ]
end
