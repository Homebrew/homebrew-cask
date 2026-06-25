cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.12,6156052174077952"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "53f7308a117f70fe7eeca4a69004e8239c8ea18c9d82e47966b290332b69b829",
         intel:        "03c6233261548872b176547e3a938f406282fbaf33ffcdefb63c35ca2246b7a8",
         arm64_linux:  "a0367e5875ac1b88a6c0b163c86ebd5d13c9bef907f4469a6516ff69021bf2d4",
         x86_64_linux: "7e3075df68ebad58aa1cf42231e9d8b83bf2895b5b058ab1736b0b6383c75008"

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
