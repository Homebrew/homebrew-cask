cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.9,4515810895593472"
  sha256 arm:          "51fb8eb7e18c53d4665f0043b761f04f4d0d4b2eb046bac6c2dcbe32473b5b2e",
         intel:        "d0fb8e28c233fadbe612fa273d06b6c189932a33f1c16f0d2c1cb6732123d6c3",
         arm64_linux:  "3a18c238c7ee6661e43df7e824a7d4c1bed78aeeda09430921a0f1dbfe825bca",
         x86_64_linux: "8b1f5e56779f2434a0af36f1b715a8392a084de550f8c68bc79821f95fabf3fa"

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
