cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.1.4,6277569641840640"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "33ca693ecf8874dbb0b7746f588264e947b919c8f785130e60a7f261190d48dd",
         intel:        "9aa56bfeadc83f724acd9e21e5349a688e029cd14592363425e432c57b81eaed",
         arm64_linux:  "333199327cc29e21cb8fcc4e19f7c02c462bf41dd876f1328d64e9922c631700",
         x86_64_linux: "aaab42e395cb4e3bfe5ae88994a340865d949f7a9e7f0604ffa2a3f1e8aadbfa"

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
