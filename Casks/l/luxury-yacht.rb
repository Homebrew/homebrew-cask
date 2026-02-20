cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.9"
  sha256 arm:   "d6793fb90cfff1f4b9684e749028d16125c8597117d66bddb66bd4ead9b1d9cc",
         intel: "9ada83db2b202cfd4f6990052cda2fee71d4cc9b2b3213aa450fcf089c0b6644"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
