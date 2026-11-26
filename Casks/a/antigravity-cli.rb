cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.18,6386224290725888"
  sha256 arm:          "f154fdbe81885c36565b74615a9ef6c7c92fb9c2bc29acb0a300bc5990691871",
         intel:        "113e058df8c3e488c90f64ebb1dbdf7763ca01af7027ecfd73ae189f3c530366",
         arm64_linux:  "97799abac91ba0b29b77598b62f903b866461da17680263a182fef2cb796ab0d",
         x86_64_linux: "a4960723ed9cf5b5ac72ed541db8df4d62741795261eb93a4681006ccb23d5ad"

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
