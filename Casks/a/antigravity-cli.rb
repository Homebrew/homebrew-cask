cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.10,6349723456634880"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "c857b5fc7035460359e8e64aee40768e6f5228358b4271bc7ded06c3e6bcd260",
         intel:        "c80d8dc254c5276d8d068d587e34dbcf81042a8516094dadafe399b313ff6eb8",
         arm64_linux:  "4674fabc3681221e54c90d15077c9a97a25ea71222001dabe44bf1576e888593",
         x86_64_linux: "6547cf9a37227f26004fa4b805418b1df96f54c57b9723ca7d10864d2610bb0f"

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
