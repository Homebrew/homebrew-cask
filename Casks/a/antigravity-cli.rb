cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.7,6190022064472064"
  sha256 arm:          "4a9e98bd6f354f762f67b8dd0595eec2a50bb842fcd35e7c7777b67f48c3dea5",
         intel:        "a9a0110d80d1db24fd2653c16d69372396e5ed7cfef2121eefeb7881b3c06be2",
         arm64_linux:  "8c5a378a7f0170db9c6417546c7cf011265e0eff2a10571401c0d90db0641cda",
         x86_64_linux: "d6150a8d2a9e29a3d171b2325d6f66b6e7059628f4799a20c069b8ed8f78fdbb"

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
