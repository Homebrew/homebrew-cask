cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.86-2"
  sha256 arm:          "2c888d8bb7fc57a7ae5d8947737dc1644f16766728c4d237baf01a108bc26019",
         intel:        "15ee3173d1dedc48cbf8375f8ef48c18dd1208fc0195b4435146019481685e87",
         arm64_linux:  "ea226e8a25a7caec1ad671db18fcf3277e39aac8fd118efe091a63349a4d0907",
         x86_64_linux: "0c20e7790d5cc32f2120fa42438c1c01c3485df4c7ba6bc6086f49e9a4d05adf"

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
