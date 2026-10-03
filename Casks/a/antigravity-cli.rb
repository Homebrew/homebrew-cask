cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.2.16,5594158052802560"
  sha256 arm:          "97b03ea3e90916e0c8a49edea615406f8ec69047dde17228a478c1854445d32a",
         intel:        "c1960f7ae5b4d741af21c17b39cbb280d7bd5973e3deca9aed41ad7cc16c5fa3",
         arm64_linux:  "a6d269d2764e5636ab2bcda73b78c587fe9d00ead767aa3974574229585ee0d3",
         x86_64_linux: "d4247430e04cebdbe1ca93d9ccb483cd2f3daeb4cdb0ace5a71cd130e0bdab84"

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
