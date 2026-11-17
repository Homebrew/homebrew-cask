cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.10,5253791805734912"
  sha256 arm:          "1470275508c2516b0f208a9050c1572b63b21776d4e7f6bc928a5eb91f3803d2",
         intel:        "cfd04ed251104e0feaf0d4a9aa1afa50bdc5a43fb3141875a70ff50f47c18103",
         arm64_linux:  "5ecb4e7763dc497a7d0157d5605a8c86ec55f24dc4efd8f597bc499d2ebca7c6",
         x86_64_linux: "72fb2946d6f5bee3d4e8928fb8a7901104361566619e69d40ae6dc03e094917b"

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

  command_wrapper "agy",
                  executable: "#{staged_path}/antigravity",
                  env:        { "AGY_CLI_DISABLE_AUTO_UPDATE" => "true" }

  zap trash: "~/.gemini/antigravity-cli"

  caveats <<~EOS
    `agy`'s automatic updates are disabled so that Homebrew manages them.
    Use `brew upgrade --cask #{token}` instead of `agy update`.
  EOS
end
