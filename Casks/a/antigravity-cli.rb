cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.1.3,5723946948100096"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "51627eb3df9a3a9d878ac4edb87b3f4930002f5d9bba3542d56506b60ef212a4",
         intel:        "c12607de7e333c54799b11ccf01b83701f33464b000799ba81662640304d349a",
         arm64_linux:  "453f9c5530877ab6369e2536e576cfab2bbbcb45923a9bc776678142538e419d",
         x86_64_linux: "7a7239a69b65d3cf3af7e75f27b2ff4e9cce696a7b9a9e5c37c695f1c74eec34"

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
