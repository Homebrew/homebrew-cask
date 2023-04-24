cask "cli-kintone" do
  version "1.3.3"
  sha256 "ef7d4cbb52cd6a4167507de3bbbb3962b79347c78816f7ef70f17bb712559964"

  url "https://github.com/kintone/cli-kintone/releases/download/v#{version}/cli-kintone_v#{version}_macos.zip"
  name "cli-kintone"
  desc "CLI tool to import/export records to/from Kintone"
  homepage "https://github.com/kintone/cli-kintone/blob/main/README.md"

  livecheck do
    url "https://github.com/kintone/cli-kintone/releases"
    strategy :github_latest
  end

  binary "#{staged_path}/cli-kintone-macos/cli-kintone"
end
