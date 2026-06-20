cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.59"
  sha256 arm:          "7149333fe9e947ebd747a888628309657b6a652ffa65c949b0109bb2895dfe98",
         intel:        "cb1482f099b2f0a3b87fac61f9d90227886c37499c00ac462e2511f32db3c8eb",
         arm64_linux:  "05dcebb98fd4e266d5e58aaf3b98ca12a671b714d5320dcc36716220d8b41ca8",
         x86_64_linux: "1b4161d2faf45fcc9a3490631ccfe3bab35c0d13807a243d835eb00b3f6f2229"

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
