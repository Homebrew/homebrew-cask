cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.5,6740358537805824"
  sha256 arm:          "e079f5ba69d548443031d4d9a66a998fe2781c6ee9380a9bc6e9565ba7d093b7",
         intel:        "8c42c5ce94d74ad2551ebc2d5500e6cd6a0443f65f8501dac5f419937ad33021",
         arm64_linux:  "f6faff7b47ad2d9a60ebca9d774239a1cd23e53a8ca6d812c1e9583909dca655",
         x86_64_linux: "bfe2c25edeadd98c2942417c9972ee0e1faa3f0afdc90711e84d5f3a633b5078"

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
