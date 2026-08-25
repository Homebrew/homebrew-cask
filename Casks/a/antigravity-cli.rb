cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.1.20,5830032204103680"
  sha256 arm:          "4f471594a692c6a1d53f63b22ae2ef3cbf7681194eaceecf635ce0085bcc5fd3",
         intel:        "611975e1b08b8f844941ad0523abf2585790aefc84d8c31d79d710d3bcb39bcc",
         arm64_linux:  "a2f5c205e9c1c89bfcf714f485a08c63b1a5d907f98226191e7b5a177e0368a9",
         x86_64_linux: "6ceeb0ac91df6dca60a4fa02856807ed2e2fc6d3d70bb734d1ad61a9e44ef4da"

  on_macos do
    depends_on macos: :monterey
  end

  url "https://storage.googleapis.com/antigravity-public/antigravity-cli/#{version.csv.first}-#{version.csv.second}/#{os}-#{arch}/cli_#{file_os}_#{file_arch}.tar.gz"
  name "Google Antigravity CLI"
  desc "Terminal interface for Antigravity agents"
  homepage "https://antigravity.google/product/antigravity-cli"

  livecheck do
    url "https://antigravity-cli-auto-updater-974169037036.us-central1.run.app/manifests/#{os}_#{livecheck_arch}.json"
    regex(%r{/antigravity-cli/([^/]+)/}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      match[1]&.tr("-", ",").to_s
    end
  end

  auto_updates true

  binary "antigravity", target: "agy"

  zap trash: "~/.gemini/antigravity-cli"
end
