cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.1.23,6260551186251776"
  sha256 arm:          "e0761b145648c7a90c3bdd636e3abdb87c46dfe5878bd377500e40e64ca203a4",
         intel:        "3d91b536ab9daf63f7e4d89cf6595a94b1393bc4da8c4c98d895377b43c024cb",
         arm64_linux:  "cbf2299514468eb31b9ccce7b89a0a011dc6497894c199c06f6b771cc9848a67",
         x86_64_linux: "379693509ca4d68d74f75def6c95996739aa6c1dc38b120c399035c108f1a39a"

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
