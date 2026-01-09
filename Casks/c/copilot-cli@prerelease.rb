cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.377"
  sha256 arm:          "7b9963c15e8fee7058455c423e06c820d2c146a33a33d1381a5289a6c508f214",
         intel:        "98c730da2b7bc6258871b583805ab18d873ad1ed81eb1fdc5fbe7a146d9db679",
         arm64_linux:  "5c4d9fad2306e9f1b32eb91d80980686ce4244feed3024809baa6dd728bd862e",
         x86_64_linux: "943ddfd066257eb6038013bff46ee73fb487c1d849d1e972cbaa7ee61ba62ae9"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
