cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.1.11,4956531888881664"
  sha256 arm:          "97cb909d30dbb2bf232d3d10e5dbc8bc008f0e7030400b515a182e490bdd6f08",
         intel:        "a63a189a59a0bd1aeb70236aca0754278f418a4ae6d8ef99c8e3616bfa7a3e73",
         arm64_linux:  "f3a03713e3e3cc84477e115d3fd9de1c232386b09384ba8690df6fc0cb0abbf3",
         x86_64_linux: "caef1dd4c99c57dee1d1dec2b6c67726df535ea49ec71eabadd36daff8223d19"

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
