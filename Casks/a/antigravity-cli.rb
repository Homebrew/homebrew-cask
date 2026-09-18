cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.2.6,5912685477494784"
  sha256 arm:          "14e1be7ed9b35e512b6aa2f2b2ba3ad79877dbde1b2d487892d3721806ff9e59",
         intel:        "05274e670572ec074491b0a07580734a3ce51127d61626d2cb4d63e9aabcedce",
         arm64_linux:  "02a0a2c863113f89ac684226ef81de47b9865238fac1076e8f9aea7ec5f4914a",
         x86_64_linux: "3d4973187c4c074e70894068053eeef1b7dfa9c0a16bfe9c3b81954de0d2cc5c"

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
