cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.2.17,6683332533157888"
  sha256 arm:          "700b4c1f3544d547784baa0e4c727019ca7f34944d5269cd636e897a4d6320c6",
         intel:        "fa91b60d8b8b074e78ed3c845ab7c5428be4b231290ca9a352a6ecc3756c5a0a",
         arm64_linux:  "4a1af1bb91352b72f40fce373a028023bf0e47f5fceb3dfa48249816c0f0caec",
         x86_64_linux: "b0ed8a7c375b5af3af973f08a601e41aebb38bac7e80b922ab54d973a4275493"

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
