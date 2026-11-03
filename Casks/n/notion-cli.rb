cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.26"
  sha256 arm:          "6dccc9cdcfad9b38fa59775097ffa6c34c306cfb9f574ea9787337af0497d5f8",
         intel:        "8ae631a5f9df062d0000a27bdbc551bc80e3a49bf4c33fef3ff179d372eae171",
         arm64_linux:  "00d3341115cc9103ee3ec43acfacb814d54b1fb7126b34c13ecc4ea8a22ef889",
         x86_64_linux: "c6c67186f5029740efea92cb82b95caa6909d8cc5765f7d4cf5d76930ec45942"

  url "https://ntn.dev/releases/v#{version}/ntn-#{arch}-#{os}.tar.gz"
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
