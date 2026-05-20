cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.51-3"
  sha256 arm:          "cd11e379f48e74d8eba25fdf90fd9b2d999d154a9d4129be1d87e1d07715b72a",
         intel:        "36d695d7a311be80c2bc9eb7791afa0163b1d9be99814924edfef37975af0dda",
         arm64_linux:  "ce36daf06600d8f3bc0c751273ccae4fcf73158e6ce40dff129504c4c23e06e7",
         x86_64_linux: "f73b9c7b12c44e17094de71e0d92024e490404e42cae2405e2ffe736915a40e8"

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
