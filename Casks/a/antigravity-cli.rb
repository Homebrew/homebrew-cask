cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.2.8,4907747922280448"
  sha256 arm:          "f77d57d99ca83e50a3a767d70621c99962ce4242e5470220f3adbf1c50844538",
         intel:        "8ba276816890a91171a8b0861e4e9eaeb334f884743f525702095c04b4bbf446",
         arm64_linux:  "85ea71929436711e4b0332026508ee4e7ddb05192f24f1774dfbed879255fc6e",
         x86_64_linux: "244752206d1f65c01aff489628f1df51f1a3fddacaa8ed74984661ebb6d09136"

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
