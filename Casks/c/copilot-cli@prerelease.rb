cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.49-0"
  sha256 arm:          "56abc04c7ae4556c739eb1da27782ee2857fae28482dc2d68b91f2afd8542e96",
         intel:        "10e82cfd4f89958c5280705f31b92129c4af1793c9e1b199a4baa6e8e6f1a3fb",
         arm64_linux:  "fc2fb7d0ca37de698fded0303f94c8fb8f9904f6dc064732f9245cd127ad05f4",
         x86_64_linux: "ec004836fdbe261da06817f350173a2de4ec2ccaa56b00efaf86343d9aa7e0f4"

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
