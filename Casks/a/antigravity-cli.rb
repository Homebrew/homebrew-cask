cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.1.8,5636713813508096"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "622d85db88bcfbf060aa4cbeaadcf2a287420f31236c1efb287409a949ccab25",
         intel:        "76afe4622132596f68557ef4531ec2e2dcd40e8025f6fb4435a273ce2eec0027",
         arm64_linux:  "e75cebb03fce0fcad7d3bb682eb84c356a3c50ff8fb3dc4a89d2051f34fca0ab",
         x86_64_linux: "e92e6215532b3ce84455e341944067753ad90f6d24cebcec8002ce137e5162ce"

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
