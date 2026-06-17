cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.7.16"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "891b79e91993ed4de5805a70fdef4a164028060e94b8935d7fbf7fcc7891c1cd",
           intel: "96e4aebcec971cfb38343cc5f48aa5f5c15437569cf647b2fdb36bd6c68b6411"
  end

  on_linux do
    sha256 "9dba7923a4dae8e169cf93fe4f0295c5376da2add07028628b54336078b3cf36"

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
