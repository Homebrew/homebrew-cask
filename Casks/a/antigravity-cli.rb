cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.1.27,5211191891591168"
  sha256 arm:          "e901e5c8fd20ab4c21c01df306030079286d08e6d372cdb535d5ccc7a3f565f4",
         intel:        "fe5f102bf65be5d478c68fc2f9c3f5b3c5cb2cc788105310b35698fd1af10192",
         arm64_linux:  "97fc9fe5a6067406cd02cbe4ae6e362c9623a24d33bec486911246c17ceb6a94",
         x86_64_linux: "f874d4f6b8a73c2df660f580f25fb656fcb6e64adbfd746e6692e837fd9a20be"

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
