cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.19,4821414830800896"
  sha256 arm:          "4f1603c9de8c993a83a12ec06b7342b6fb7c27853e9d9fb6c786286461d1ff50",
         intel:        "a8507272963d5a93f18bede59f6ba1efc29f6978a193a4ee5c9ad39a247b993e",
         arm64_linux:  "aa316ff45b0d40b49ed83d29e3865857fca0c125f350fbb9d3c1cb9a640b49c4",
         x86_64_linux: "971a4aa707fb0886d4e1df5f1f50bad7b01aa492d0b1f13df4ea7402e96dae90"

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
