cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.1.7,5951805767680000"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "1ed31957d30e2d9735b1ce545a1e9106233bf7ce07739ea1f883957f5d240bed",
         intel:        "67924f137f1ab884415fa5ab45de592d1d037eacb45be90f67d0bc6dd181498d",
         arm64_linux:  "0d6d488851745e80e69b8935d063e742945811b47111994b1a6dbd27df3010d5",
         x86_64_linux: "946cd06258d0ede72d0311550c914315798821f6a397f53ac760919826a19af4"

  url "https://storage.googleapis.com/antigravity-public/antigravity-cli/#{version.csv.first}-#{version.csv.second}/#{os}-#{folder_arch}/cli_#{url_prefix}_#{file_arch}.tar.gz",
      verified: "storage.googleapis.com/antigravity-public/antigravity-cli/"
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

  on_macos do
    depends_on macos: :monterey
  end

  binary "antigravity", target: "agy"

  zap trash: "~/.gemini/antigravity-cli"
end
