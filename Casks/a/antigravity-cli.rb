cask "antigravity-cli" do
  folder_arch = on_arch_conditional arm: "arm", intel: "x64"
  file_arch = on_arch_conditional arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "1.1.0,4523441756438528"
  url_prefix = on_system_conditional macos: "mac", linux: "linux"

  sha256 arm:          "0697f826ec64072bda426522cf239bb5400d730e9205cd3a1a83912e965b8d9c",
         intel:        "b17679e4044e8eb1c21c4f8ab5cf570dbf11079dc8df1c315b00c60de2489483",
         arm64_linux:  "23550a5ae36916b2702c006a47c21aa86fbe3af1ac44f57b5dbd3f9dec5c7e7a",
         x86_64_linux: "7ee512440af5ed0c819065cd7cc14eec90699214df4be32280ac346f0100577e"

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
