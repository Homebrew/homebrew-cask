cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.7.19"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "a056355b8bee291fcb823e59b29d71af0fbe695ddd024d86391777e488dbb7fc",
           intel: "fda55c55d2958c5efc87814c48db05c87f72e81b19c00694670a1b3404010aa6"
  end

  on_linux do
    sha256 "cb80586823b6e3155076d8aca194d9ad8b858523b5fd5c0db6a5ec55ead87fa4"

    depends_on arch: :x86_64
  end

  livecheck do
    url "https://static.devin.ai/cli/current/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "bin/devin"

  zap trash: "~/.devin"
end
