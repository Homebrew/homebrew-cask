cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"

  version "1.0.4,6410134369468416"
  sha256 arm:   "7cfff69ed69e268af076faf857f10bb2879e3e0948270a49ca3d431fe746c1b3",
         intel: "f1251c12138a5c5f04ef9fd1ae1443e445588b852c6e07a24704b7dafe69a62b"

  url "https://storage.googleapis.com/antigravity-public/antigravity-cli/#{version.csv.first}-#{version.csv.second}/darwin-#{folder_arch}/cli_mac_#{file_arch}.tar.gz",
      verified: "storage.googleapis.com/antigravity-public/antigravity-cli/"
  name "Google Antigravity CLI"
  desc "Terminal interface for Antigravity agents"
  homepage "https://antigravity.google/product/antigravity-cli"

  livecheck do
    url "https://antigravity-cli-auto-updater-974169037036.us-central1.run.app/manifests/darwin_#{livecheck_arch}.json"
    regex(%r{/antigravity-cli/([^/]+)/}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      match[1]&.tr("-", ",").to_s
    end
  end

  auto_updates true
  depends_on macos: :monterey

  binary "antigravity", target: "agy"

  zap trash: "~/.gemini/antigravity-cli"
end
