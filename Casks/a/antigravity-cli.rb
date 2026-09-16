cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.2.4,6085322963025920"
  sha256 arm:          "f59c12c289e74bbb48178f827702c6224bd0aa920914319f85b42760dfc72f4c",
         intel:        "ed5d05f8175d05b1a3ba19e06552698beb59f0eb9c9e76a7eca092f5a8f7d07e",
         arm64_linux:  "9dee8d8de3ebf420525902ead1b4ca8d12b93731bfae3673f6f8a24131ac5e5c",
         x86_64_linux: "dcd3e4d8c8afb1902d59c1ae52812458d2ddab67a5d2db44810c512910d918fe"

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
