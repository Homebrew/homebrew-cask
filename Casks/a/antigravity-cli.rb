cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.2.14,4571742832820224"
  sha256 arm:          "468edcc454b6bb1c321d8d42591a16ace4d1a1d628a4f1ce95ad236c9ee4cc19",
         intel:        "39364cc24e7b2b05a4a0138c60d5d5da39df9fb76dedc9e3f4b74a168512fcd6",
         arm64_linux:  "3b40c3baab245b43a41007c1db64df51f5f162b6059fcc4a4504731f2689d301",
         x86_64_linux: "68cf4d221cb62e0289245439d3d37f599bdc8e0c4e1e3dae03f326463a0c26dc"

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
