cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.79-9"
  sha256 arm:          "35477065daddb4ddda4ed0cd180691342e0a61afda5282f78ca5e3b9c7c9f852",
         intel:        "9f6b515d0607b8f836166b2b7cadd3591ce546d1cc3bb4f2f38f3c5998a44be3",
         arm64_linux:  "1b43ddb1776fc1c926924edf3bd06e864cf0a78646a89307fe75b6900ef1ab46",
         x86_64_linux: "8fc2f8b5d444515dbc3b87d894f402c435c431b8fde1982524db876ce864028d"

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

  zap trash: "~/.copilot"
end
