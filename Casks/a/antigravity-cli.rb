cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.1.18,6435547766456320"
  sha256 arm:          "dbebf3ebed127ae5f74fd548dee7c411baaee63de707b5c8f9b533118823b4f8",
         intel:        "73acdc529f8b15fe396f79bea7109b74e17d64f02c589f590acf2de80488b918",
         arm64_linux:  "1639d0ea2c3bbd0e68621d70f8222641724b0871afc2f8798dda27cb84217e69",
         x86_64_linux: "1aa7e3c1f5ba02372d24ba2f99ed015c7135016becc7dcbb18bf8332f513a818"

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
