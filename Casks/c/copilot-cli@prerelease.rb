cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.92-1"
  sha256 arm:          "292833044919ef2fc31a03d3bab30744880129badc38b495d2714f4b3b6e2d8c",
         intel:        "543d0cd7f1de93bd71425a15cbe0c0ee5c47389717c4a7350f91c7b50e6ecf02",
         arm64_linux:  "2db51beb2cd17a2656b13c7f1e2b0b47fc8eed723cb6691ddfccf82bdb07f7f0",
         x86_64_linux: "63c14d9bc460900b04e76134fc5a2f841b269dcc76c6d452843c22dd06ca0159"

  on_macos do
    depends_on macos: :ventura
  end

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

  auto_updates true
  conflicts_with cask: "copilot-cli"

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
