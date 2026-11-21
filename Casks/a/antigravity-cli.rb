cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.14,5302690847260672"
  sha256 arm:          "b01bdd4591e13ddfcb0e049bea74ae9f83e80829adcf64aaa58f5bfb1a425a54",
         intel:        "c142141141cbaa93f4e46904b76341e349f3f2b78445f877f39468dfe60dda1e",
         arm64_linux:  "e5f69a3123fac66974b303d9a201f381a0fb32b3ef869d9139da85d5caf67a2a",
         x86_64_linux: "d58386322d2073e96b33f7cc32b4e9ae2db6228f58440369725967b2de48c7b5"

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
