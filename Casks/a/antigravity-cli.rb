cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.4.8,5447777392656384"
  sha256 arm:          "ecd1f7b35927bc23ed4496139aeb0e39b99c4b1c63d5f1f3b8fc25ab515e7631",
         intel:        "ce851c99afb9a21a8c0cadebb1b7155a951ffba76749081f0fd2c06b0a7b29c3",
         arm64_linux:  "bbe34c56bdfdcfd9b9a4fd24f7430f7a807777b356b216b41862fb6dd9450c80",
         x86_64_linux: "8b165f0fc584f0f92dd1318dc3a090706ae18aade7d36b0b8623b85aeaf86c52"

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
