cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.1.17,5084709148033024"
  sha256 arm:          "60fe89d3aef472ddf6c7048032f7585fae732d879f3700fc3188c68c46b35cdd",
         intel:        "af48ab23e69caefe1fb9b14efd7e1aea8cc46db2a6191afa8949b28afdd2547e",
         arm64_linux:  "28822f4ba6d5914064dcab3a1b953b2d10e1c9fc938178c478911b5f0b5b06a4",
         x86_64_linux: "15443966494cd62938320900acfd16df906cf4da56279e4dd8f4846c09f849df"

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
