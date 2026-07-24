cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.1.6,6535449645285376"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "89b371597511dbd8399569ed85585ecd6769d7838d3e31c8cf97e231be570b9a",
         intel:        "894e70ff5bbf5088ec97b7e7c9456132c6767acf92dc842b49c7cf55de3f3279",
         arm64_linux:  "78040d87f4fef72bb785af68cf7d9d6c25024710ee58f8281f85c3f1e47b975a",
         x86_64_linux: "2448b9bb1d3496063a6335d021dcab90c42d71fdaad6346ef8a395f0ca0fe9d0"

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
