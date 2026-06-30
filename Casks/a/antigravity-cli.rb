cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.14,6049473256882176"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "44fb1db46b67d8566fdafe31ff44722c02ad1655d588cc18029ee349122bb3a3",
         intel:        "75a2840202f67a25396b5fb758ab77c212636a6a0e934a5b4175c49e79ae6df4",
         arm64_linux:  "992653b4de4fe667ee5bd66ca259edd6b88b308f20a31880a77002624204e277",
         x86_64_linux: "7170d598193ee0addcaba7d8c3a2c2e307ae8622dacf749831128bd1ad3ca458"

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
