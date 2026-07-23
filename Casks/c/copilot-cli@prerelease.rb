cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.74-3"
  sha256 arm:          "152feae328b5382fddc8bf800237403a04e23826635a68e17d5332ae71fa034a",
         intel:        "e18dae516821a6324946a639cd86c36346b9092fa3f759dd4ae870cad5451a5c",
         arm64_linux:  "f70a967370a3a63bd4e9138a156432fd7a065ad4585bff4e901aea9a6a77b63e",
         x86_64_linux: "5dae912f67441d74621595528193fa2a7ffc659836356366ec4f2bfc8111db58"

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
