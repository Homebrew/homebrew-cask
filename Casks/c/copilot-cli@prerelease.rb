cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.422-0"
  sha256 arm:          "433c74898315407d1444645e8e1d509d6f8231fb5d54f83e67b944e654cc7c53",
         intel:        "1977b0f248fe1a57e44c300d8fda3c497ffc5e3adde5e4afebe05ca4648598b3",
         arm64_linux:  "68cbb4304203162fe2a4bce5c6a68ee84fa36b883b3ebcf7c4e1db38a6cba3ed",
         x86_64_linux: "891b5a930f1bf6052e511afeaab23328f1fe1e8496195efe4032b721a86a806d"

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
