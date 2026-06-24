cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.11,6118976565149696"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "04995f9ba3682c33a3dd55e7f7a821fb281d961c660eba79ee79233b9e99464b",
         intel:        "3911a48735a5f162c7dc851243e301aa3f41fbaf86099bca33d160bcdac243d0",
         arm64_linux:  "a36d87f3624be58a7d945c5cd62104206607adc3422f5bd68c986cacbd698ae7",
         x86_64_linux: "ee9ee33b3e0b80768ea5b18458ccde84a9d35f0b99083dcc2fef83d5a312c01a"

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
