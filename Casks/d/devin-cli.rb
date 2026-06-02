cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.5.26-3"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "632fe54e658c36c9f03d6fb2a2860b9cde734a0fcaf6dc03fea4c35dd20412ab",
           intel: "d44eb5a73854a4315f159c3a9d9a260c66fc78a08abc3aad4a1723fb7d963415"
  end

  on_linux do
    sha256 "33c980971ed0522c61a4e10da3994f8de0a252b6ec2f4e173ac39ed3867199a4"

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
