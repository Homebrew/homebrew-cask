cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.1.1,6269367663591424"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "83333dd7131bebcce2dfa5f94722efce442d7b67e9ab9b240c91f100a26d4675",
         intel:        "f04855a9d14a9f29476b2343b5f827e897b187a7adce065201fef15c5d1a70bd",
         arm64_linux:  "3fc542686c5c82d7a01e3796a8bfcda5ed849c6e70f07d4d0c93e51368952784",
         x86_64_linux: "2ee167841cdc9a1d7dc5a624f1f15b84ee5dbb94b85af662a7299118cb4b1586"

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
