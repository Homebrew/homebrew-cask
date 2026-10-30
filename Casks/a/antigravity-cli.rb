cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.4.11,5180209989812224"
  sha256 arm:          "084887b4d4485d5a44ac47ed6df6ab7f92ba01337050524f0a98a690c8662228",
         intel:        "2a3695aa83b47c30ceaff23f4fd1e7a9c9136010ab9b4ace3109458c1443ff89",
         arm64_linux:  "debb2c056e387be63fdf86d48dfcc99ed1f523e51c5067abd119d78bd36e8a18",
         x86_64_linux: "d17c426977326361f3d81f3ea22820e967164285923de020247e460dcb9d15c3"

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
