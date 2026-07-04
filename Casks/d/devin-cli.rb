cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.1.23"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "c7e83b9082d9b961b6257e2d73e19d204ed7aa91c8cd6b7afb13d053f833c9e0",
           intel: "2c5d4c939dddb36f00befabe4edcaf22efc13d84879bdb415630255170322555"
  end

  on_linux do
    sha256 "9bb0ce23f3d8d25766e244660317844174e21ff476a13dd1f22826b57600e348"

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
