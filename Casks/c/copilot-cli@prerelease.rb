cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.76-5"
  sha256 arm:          "838e9abeea0abbc1766a9b7efa27007d457b1bf520dfccf31ec3904463ad02ff",
         intel:        "87d596bfb6d538f178fb72d8afe3da8e6a508924994c8f9d33e92ae5c12f2dc7",
         arm64_linux:  "2fff1ccfeb7663f0a69eb0d1d6eb83ba6463bd9f72a0284cce9293cff5b7afd5",
         x86_64_linux: "183c1c8737e6fd052573e2e3ef26105e8ab5648b9467d1a83ac61728d1ca8896"

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
