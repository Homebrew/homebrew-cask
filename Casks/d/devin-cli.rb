cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.11.92"
  sha256 arm:          "6047392212ce073ede2724d84246cc04dd47811a1d1e2084eee7252703940ac1",
         intel:        "59cf4576f0b345f89db248f99a82562d2ed7a189f7ce2a3273fb5374a749e7ac",
         x86_64_linux: "2d829139682e038cf122510f1170eee3d7060bcc7ebf92445cbc5d28c9fbcfa0"

  on_linux do
    depends_on arch: :x86_64
  end

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  livecheck do
    url "https://static.devin.ai/cli/current/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "bin/devin"

  zap trash: "~/.devin"
end
