cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.78-2"
  sha256 arm:          "859edcbbdeda00ab33bec0fa284ce3bdf42620a5cb86fe13d4d901a286dedc3f",
         intel:        "88dad911dbd9d26ad7b3a59bb80d1749189960792b8f118e26ee7ab1878c0c82",
         arm64_linux:  "ca32e74ab5ba0cfe7af29d3e77aa39c6726fc547e78a9f8af2c5179cb6cad35d",
         x86_64_linux: "9f1274d70aa550341ce31e3dff74354790e24775f2d1f48eb2184b3272e38686"

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
