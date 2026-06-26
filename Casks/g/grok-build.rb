cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.67"
  sha256 arm:          "d5a4de95999e4fa2a79d819a861e31dc22c356cd6da3ca624ba2a7e7c3655c60",
         intel:        "746f6d1ce4d6ec5e4b10b40d6d5160b672d4e892927fc194c48c52dd855d9e15",
         arm64_linux:  "8eafcdf4c6f3ed228bc4965595b2892059e3084079289da604d7d86b871b7851",
         x86_64_linux: "df9081d320bbe647c97375fc866eda9d4974259782682f68c2e89cb559529daa"

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
