cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.12-2"
  sha256 arm:          "3f73a93e1a42b3b273004523b76a15761cfb91cb0379d502a56860f31a594864",
         intel:        "b1b2469ef19699bb1e610eac3ba01f8c0cae652aa49cf074b9639c418e176478",
         arm64_linux:  "c940e9f16fa6e87d8a5cce37a050b02ad4b624469d02219b36e4af60907881d1",
         x86_64_linux: "2708342ca605a29d471667cc392eb130e72a7021314ba95d14392f29b0bd9c70"

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
