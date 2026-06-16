cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.0.9,6003845613092864"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "7e838169b26a400bb4f0cf56181a1967a33a41c90ac2b9de586d004539f4e602",
         intel:        "d665f3a4d3c3a57b8ca17742ab2126ffaadd21ac031d57da2fbbb4925cdd770d",
         arm64_linux:  "944d67056b7cc6e4411dca84d9f077b1e460c8cd2a4432d2cdf219421ff73e5a",
         x86_64_linux: "cd80f85f43b52b389d7b498d6784f8316d57a9cc62eae23d840c5de368f9c4d5"

  url "https://storage.googleapis.com/antigravity-public/antigravity-cli/#{version.csv.first}-#{version.csv.second}/#{os}-#{folder_arch}/cli_#{url_prefix}_#{file_arch}.tar.gz",
      verified: "storage.googleapis.com/antigravity-public/antigravity-cli/"
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

  on_macos do
    depends_on macos: :monterey
  end

  binary "antigravity", target: "agy"

  zap trash: "~/.gemini/antigravity-cli"
end
