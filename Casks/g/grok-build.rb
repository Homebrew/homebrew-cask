cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.39"
  sha256 arm:          "f3383cf1c1b1cc38576f0378c81268a6d79396cf0f136c6ec9111873a9072022",
         intel:        "5cdfb02013e629ee9e295644775b34526c067862ff93ffccfe583b8442b464da",
         arm64_linux:  "70607ffb430875a86ac942ed773c3c5648fac6e1128ac9339fdcb76654c10721",
         x86_64_linux: "26fb1fb91510df553eaf9461443f37332fe5f3da2ff6604c7cb9efb49dad563a"

  url "https://x.ai/cli/grok-#{version}-#{os}-#{arch}"
  name "Grok Build"
  desc "Extensible coding agent for the terminal"
  homepage "https://x.ai/cli"

  livecheck do
    url "https://x.ai/cli/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "grok-#{version}-#{os}-#{arch}", target: "grok"
  binary "grok-#{version}-#{os}-#{arch}", target: "agent"

  generate_completions_from_executable "grok-#{version}-#{os}-#{arch}", "completions", base_name: "grok"

  zap rmdir: "~/.grok"
end
