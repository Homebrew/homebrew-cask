cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.56-0"
  sha256 arm:          "78977d8806595ff049459a66df30bc8fda070718220f4f979efd245bd6c87f92",
         intel:        "0f7d15730b6c6399adc830daa2c26e6b56f4a6577e735964e5ccae786b2a7ad3",
         arm64_linux:  "ea44b29550a85d34f112ab2e3cf51545a3147c5b2819c5443f54324982b30d72",
         x86_64_linux: "5a30e60dd9c0de7fc30815b55877c9f2a25d46e131eb6a6b446f2016aa8e6209"

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
