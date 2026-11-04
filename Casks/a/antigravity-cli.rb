cask "antigravity-cli" do
  arch arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  file_os = on_system_conditional macos: "mac", linux: "linux"

  version "1.5.0,5269980577660928"
  sha256 arm:          "105fb4f6181665f85cea79a9a26ef9e106ea0666b9a0904bb63a45e64951286b",
         intel:        "306bfdf4d9b14d949aa5b297fd234fa6713ce7f6a4bd4e85aaba0001a1ab69a4",
         arm64_linux:  "87e73a5ab4ecb3a9668660d259dafd13f5443149da0113664d59129a21a62ba4",
         x86_64_linux: "f65e365a67be49abdaf92f5669c3157bd4b9c569f6b9f448340b00ca261b0f01"

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
