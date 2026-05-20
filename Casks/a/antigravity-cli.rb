cask "antigravity-cli" do
  arch arm: "arm64", intel: "x64"
  download_arch = on_arch_conditional arm: "arm", intel: "x64"
  manifest_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "mac", linux: "linux"

  download_os = on_system_conditional macos: "darwin", linux: "linux"

  version "1.0.0,5288553236791296"
  sha256 arm:          "65c2f7b5e27a21ef983b161ed75866e89139a682adf679000e1a5d9d374e320a",
         x86_64:       "744a1a25dcf0bf6628e3add764d2155c44d7d174edf8b181a7427f7d9fb3fb53",
         arm64_linux:  "f4dc7c96c1836b00768d8a6ec6eacc7851f3424bd6f4ebe4d8b848a652072a85",
         x86_64_linux: "70096340574fafc4a06c4d3c8057314e22d475ce1c820d0ad51ff07fb7e99eb6"

  url "https://storage.googleapis.com/antigravity-public/antigravity-cli/#{version.csv.first}-#{version.csv.second}/#{download_os}-#{download_arch}/cli_#{os}_#{arch}.tar.gz",
      verified: "storage.googleapis.com/antigravity-public/antigravity-cli/"
  name "Google Antigravity CLI"
  desc "Terminal UI for Google Antigravity agents"
  homepage "https://antigravity.google/product/antigravity-cli"

  livecheck do
    url "https://antigravity-cli-auto-updater-974169037036.us-central1.run.app/manifests/#{download_os}_#{manifest_arch}.json"
    strategy :json do |json|
      match = json["url"]&.match(%r{/antigravity-cli/(\d+(?:\.\d+)+)-(\d+)/}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  conflicts_with cask: "antigravity"

  binary "antigravity", target: "agy"

  zap trash: [
    "~/.antigravity",
    "~/.cache/antigravity",
    "~/.gemini/antigravity-cli",
    "~/Library/Application Support/Antigravity",
    "~/Library/Caches/com.google.antigravity",
    "~/Library/HTTPStorages/com.google.antigravity",
    "~/Library/Preferences/com.google.antigravity.plist",
  ]
end
