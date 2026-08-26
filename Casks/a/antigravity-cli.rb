cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.1.21,6424454201475072"
  sha256 arm:          "2f187c5d2135cb4f7ecb178c25801a2b94e2aaa0e9f2dadacff84a68c66f5700",
         intel:        "d866d427f8cd9381ff826ee8a96cf248ccdbee08ac5cad1653ac775066a4ffca",
         arm64_linux:  "8626b97aec1ef96abdabd234c0b8259a2fdf2a3f3918c927641f8c821342d5e4",
         x86_64_linux: "4806a347119d36be6d8ab5cc3f03319bc6aa8407a8d9203de7976a42954cabde"

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
