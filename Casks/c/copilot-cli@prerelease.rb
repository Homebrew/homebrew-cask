cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.6-0"
  sha256 arm:          "81a164bd2bcf38fe5539d7bcb3f5395d999d9b46085eebf7bbce954a28a335e0",
         intel:        "fd4814533d16a200f9fb9647c930d54af563540241f7cc3d5c357ec76e6c9b07",
         arm64_linux:  "b3966ec202979929426c1b4beb516919ab3807a9d8d327c8ad99b3a4bf261df6",
         x86_64_linux: "057ba456f1c650e1b8eb441795c622bb34460b9f637f31e3e1a0803fdde416fb"

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
