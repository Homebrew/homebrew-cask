cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.3.0,6233328509124608"
  sha256 arm:          "7fca9f07c3fd4b7ffcf8c61903ad6ea1550d0a35790b809ab078ee6b4a9581bf",
         intel:        "f110dfa190ca2a13c12f3643f8537649a11e034140cf3b309760ee5f125812b7",
         arm64_linux:  "ca09b2c9e6cd34a456dceec7af0198d53aceb15e94204f4d8cca3602c5ee5062",
         x86_64_linux: "54731cc8ed8fe4a1840c38626b7e3251c6dc4484387f98005dba682507f495be"

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
