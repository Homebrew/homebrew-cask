cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.25"
  sha256 arm:          "53196c36f98fbf94f56837dd5997872b51baf5226824c3cbd8cf7dc1f966ea5c",
         intel:        "eca69bc0bf6f4a26c8aff8608d779aeba9233d77801d962d15e9d8fc45c1b5bb",
         arm64_linux:  "8379954cdb82a3c60866a18923da5f43a3358a6c8c698c085cc2905e7255a927",
         x86_64_linux: "99faf81af403553b66d0f06a466ba6ba6b0e2708fb6b8f1eac2cf7ad1d5db47f"

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
