cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.30"
  sha256 arm:          "ec4dc27427d71d3bbd414989b1897948b81eb092b94de9ceb4b6e06f750af016",
         intel:        "c528ff2da2505bf49f7434bd8cab8cda72d7ecc71bc2dc08f0d26f2847af21eb",
         arm64_linux:  "3cdedd7bd060809f221f21a76516a031246458bcab8895bec3ab38b703147f7e",
         x86_64_linux: "1e082c5202ccc12549db148310d6b24b1ed3e13b8ec5073eaaac6b51a4e9fdaa"

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
