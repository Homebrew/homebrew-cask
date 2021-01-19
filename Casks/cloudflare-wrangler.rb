cask "cloudflare-wrangler" do
  version "1.13.0"
  sha256 "826513cf8f5d9e223797f1a297dc7e8a23a370ddfea1fa33817cda86e3f5556a"

  url "https://github.com/cloudflare/wrangler/releases/download/v#{version}/wrangler-v#{version}-x86_64-apple-darwin.tar.gz"
  appcast "https://github.com/cloudflare/wrangler/releases.atom"
  name "Cloudflare Wrangler"
  desc "Wrangler is a CLI tool for Cloudflare Workers"
  homepage "https://github.com/cloudflare/wrangler"

  binary "dist/wrangler"

  zap trash: "~/.wrangler/"
end
