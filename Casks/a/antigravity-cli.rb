cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.1.5,5958982624477184"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "04254cb335c4f056308e1a7f188365f58d5c688d5af162921eac4bdda736ba55",
         intel:        "57727fcf8048860bbcfddbb404a2df9aa26557238c4e7d21feb7d646525f478b",
         arm64_linux:  "d61ace663d7efee9dfd8f4f881e6f1021eff904a0688a91cd4d84359ee76f044",
         x86_64_linux: "1d586501b8a13d146e8aa3c7f00634f50c6034e2c428ea7d013377d36315a69a"

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
