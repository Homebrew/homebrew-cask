cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.1.19,4894004681244672"
  sha256 arm:          "ad72daf6b255d96e4864fe6bd2f3fa4070fb4c554845ceaf1d6399d8f1092e45",
         intel:        "a12c448dec091248eca3abe0bef67c7696509312ed9b4f26415b9abedd98bf81",
         arm64_linux:  "15bd9959ec0c08bcbfee94b376f02bd8b552dcf17a539bcd210a443fb82443cb",
         x86_64_linux: "a02132a7c6c647ef0ad483ecbe767619adf6b660a5589cba5c937b0c83909b97"

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
