cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.1.2,5174998495789056"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "50b760c50ff288342fd4bb8b1c21d5ac72da75dc47b6870b6fe645e9370c95ee",
         intel:        "99f7ab841f50ae5f988618378fb92ea773c2392d5618d9849d4edf49083a62c1",
         arm64_linux:  "59cf9ec0f5a694fd9cf612262d152857368fdc819db1192bd3fe1219ba26254f",
         x86_64_linux: "0754010347926daf00c96734cfcf59ee6043eab23efc35b99b2d62aad84dc6f0"

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
