cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.15,5090589570629632"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "61b17465635de291036b50883f4b8c3dd4ac9af22969853019acff526274f567",
         intel:        "be3a397eb80c58b3190f4e3860613ba5cac558f763d64a052e46ddbe95a3a57f",
         arm64_linux:  "2a816dcced6aefe8f9cc0281a3d9d00af87a8a6f39789f2030e32c92d3e864f6",
         x86_64_linux: "d125764f115fa53d77081ef1e2a6fa9b3a3fde8799a0d91d811a4bee4b2b2fb7"

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
