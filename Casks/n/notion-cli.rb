cask "notion-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.18.0"
  sha256 arm:          "69c90373d483af4d3c656afd6aa318256950698242ee185043b0ea824aecbc8d",
         intel:        "0424d5c7561c9cf42d8d6e1add2bee732f5d8bbc50400dca95d22089022ab99b",
         arm64_linux:  "ab9ee16f598499b0021672930f2b5a87db78323d985f1ec9503e8f74401aac94",
         x86_64_linux: "56a503051394ba0af8c2ca2e31133f1b412649e15248975318f15917f69d48c0"

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
