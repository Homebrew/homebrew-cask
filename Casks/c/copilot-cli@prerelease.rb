cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.55-4"
  sha256 arm:          "63aaed855d989b3d9df518bbd18ec1379a60cac61602515b4d31607bbe66188a",
         intel:        "3a51d48d7a1d3664f4997b5ddde0b9bfe6c17e1454a4298d93d7ab7227a4091d",
         arm64_linux:  "f51eeb05a190e9f0289bfa76a4df53b0fbfb6070944f117391dd4a7a45981c86",
         x86_64_linux: "e23b30b5b4ab27dc67ae811006dd583cb83d1592e910a8d005c0824240b8b670"

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
