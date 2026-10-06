cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.93-2"
  sha256 arm:          "b4dd6e183c7db3fdcf27e899710920f0ba37f50fdb024555198b1cfa9956b731",
         intel:        "b2ddacf24c309981a092a9283f1c0bd8747be047af650612308575248e756159",
         arm64_linux:  "bf7e06d52548ea5d2aa1e01a5a95bfc4654fe69852d70fe7665bf3cb76bb7c59",
         x86_64_linux: "51b076133e2243068e47cd0c83c2c048164111e6e39fd971306788c4426474bb"

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
