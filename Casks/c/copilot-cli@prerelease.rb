cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.66-0"
  sha256 arm:          "8b162fe23e0685a7df785882018f264f9705a26b93be32bf949b6001b3132f64",
         intel:        "a59ceb0046c86762c9a80a579b33be3bdd0257ac648abb157b7aa65c68ea33c9",
         arm64_linux:  "fafa3468736fc042162a60f060f8fb83069f85552484dc3fb5343eefb5e154c4",
         x86_64_linux: "a651a7581a91f61ea6e77ca456269d2327ee3e1a5854d6d945495dd91a47d34b"

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

  zap trash: "~/.copilot"
end
