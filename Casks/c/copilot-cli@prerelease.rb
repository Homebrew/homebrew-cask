cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.396-0"
  sha256 arm:          "15d75a42f2a868cb28ab6a28f16da4201dc537aedf2296b034c3cb6e89a65326",
         intel:        "ca8020e34f0ca5326e942d363498066856c095dfb625bffd045cc7ae51ee7d6b",
         arm64_linux:  "90deef46906258159860fd5d93770ef10c218afec0d7a6464b9c07b4b9bfed7d",
         x86_64_linux: "d80df4a329b770a67409d51ec23da323764eabfd91356a7a4579c40179617154"

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
