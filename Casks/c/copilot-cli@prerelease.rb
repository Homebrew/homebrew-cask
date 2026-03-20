cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.10-0"
  sha256 arm:          "a72fa9d0404e831f8ddc821894a68ef65349f8eb62a423843fd545e1e61863af",
         intel:        "98922f7507b202a23d22e67888cb1903cfe37f1327174335ad6deb43fdfc088d",
         arm64_linux:  "3b5b93770c597183e7c3ae231bbf30c135550e66322b3c3d1f83b00fcb9dacac",
         x86_64_linux: "1c3990fb492a18ec2f5c7bc0bc38245d637c048fff749f00b381c639fb2950d2"

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
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
