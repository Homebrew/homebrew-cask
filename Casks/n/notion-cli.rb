cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.23.5"
  sha256 arm:          "dde8e0f723222a236d5b8bfcda12c0c51380581156f47dd2d1f92796f068909d",
         intel:        "51c88670e5416a2eedc25f42557fa38c6a2b4eacd28be41bf3b81085cb64c2d4",
         arm64_linux:  "77baedb489fa679550a7721453a5e2deb827e986d4c9bcbbfba797bdc025d8c9",
         x86_64_linux: "f5eacc140109f57cdd15720255caeacd148bcfe97cbc846e430b5f32a6e943e8"

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
