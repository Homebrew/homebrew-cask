cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.22"
  sha256 arm:          "4020e8fc04fe47dae040fd3d28bcb36081132bad505d115d5f34642d6414d51b",
         intel:        "0d3949142da1871d750d13fe43cad5a602df97e1933731d3f4d9682fc2ed52d1",
         arm64_linux:  "5078be0a3afb85cd3efaec58c778beb67499fc857ecd36d8590209fee7102298",
         x86_64_linux: "f462057514283fa85d9fd79da18854c72b2ecfcd642b65c28c23b832c4671994"

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
