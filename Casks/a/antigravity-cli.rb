cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.1.10,6423386432339968"
  sha256 arm:          "0617d4aa7b0ea7ba1e24143b5178d28febaed8e5fd49b7e6e99765d4200d29ef",
         intel:        "416ed1883c74072015cc8e5ec2768ac6ee4d2cd9e2f4ef68125e943e79794b5d",
         arm64_linux:  "4308f85b1dd4f6b5654ea5f7a0962a482f33acf8169b2e6ac4aecdb209d13411",
         x86_64_linux: "9e94cfffa869ee2bf9ab32e05eff3baa4661b66d5e00a2fd40a8c5dc6f9bd450"

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
