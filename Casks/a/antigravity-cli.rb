cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.1,4523430503120896"
  sha256 arm:          "2179ba83eb5429ec19260d022196abb3cbe5e65e11e2c2ef2d19af564c1558db",
         intel:        "f7952882cdab510339eeb67dfe5de85857b4e29078ba56db6c0e5f2b1b43f2c2",
         arm64_linux:  "c43a50831006d95a7637aa9cad7000fda9b9bb4b3ece8c53cc6c5089b92542ea",
         x86_64_linux: "2a64ccfc5f6679c253769f0760614af5de04d8dc1eeeec9b9752ba4c8dd92250"

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
