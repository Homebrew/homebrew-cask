cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.2,4951595792859136"
  sha256 arm:          "c3f56b381c4755cdd02e5de67373c24788b2a2aeade156756b4419b67253bd0c",
         intel:        "fe99ebacc6bd46b4bf2d85c718420b28b699210cf7c2e3055242e2dad7a1beb3",
         arm64_linux:  "cd155ecd9bc962037423e6826ed0b61d3b16d84d350cdc9a8c14478f24f5f235",
         x86_64_linux: "da696a8dc6122a63d5ffbdd21b02c8a62d5361fba0ed7d3bc2d2619889e62711"

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
