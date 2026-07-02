cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.16,4893150192467968"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "70085c462422851ae18a23acfd9e6439c46b73dcc062ab67934f00d9c233ca0b",
         intel:        "93e8612d19a24748b20ede2397defefaed8a38393abc64696eb4848970062af6",
         arm64_linux:  "a66ae3e75e024c03aa79d6618ef8199a0a71ae0f43b9e5ee9e930a589ba0ca2f",
         x86_64_linux: "8ffc887002920b1b4ab42f6213f50a21aa7bb4ee14caa0ed563129a2ce39135d"

  url "https://storage.googleapis.com/antigravity-public/antigravity-cli/#{version.csv.first}-#{version.csv.second}/#{os}-#{folder_arch}/cli_#{url_prefix}_#{file_arch}.tar.gz",
      verified: "storage.googleapis.com/antigravity-public/antigravity-cli/"
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

  on_macos do
    depends_on macos: :monterey
  end

  binary "antigravity", target: "agy"

  zap trash: "~/.gemini/antigravity-cli"
end
