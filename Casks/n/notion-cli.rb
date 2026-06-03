cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.16.0"
  sha256 arm:          "8b481394de03edfcc47308a3456758f3b3f472b01fa6f4cdb76329ca6e6fc0fa",
         intel:        "8ab5b1c5e52a063ef0b9892ced97354adde6252cea148e46ccd3ca54147b60cf",
         arm64_linux:  "d2e53728fb5b5469904bd58e6565ab86ea7a270165d32de5e3d37d6c0d389793",
         x86_64_linux: "1bea66248f20b52e525047edd7a1fd12baa6213dea07650a7299f139c09ea479"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz",
      verified: "ntn.dev/"
  name "Notion CLI"
  desc "Command-line interface for Notion"
  homepage "https://www.notion.com/product/dev"

  livecheck do
    url "https://ntn.dev/latest.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "ntn-#{arch}-#{os}/ntn"

  zap trash: "~/.notion"
end
