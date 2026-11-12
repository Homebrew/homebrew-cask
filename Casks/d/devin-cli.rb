cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "3000.12.57"
  sha256 arm:          "c0ec7f558f25a9e6b117743bd06781e1a24c78d8552727a9539601de94912f12",
         intel:        "18571f6f9596bd13894b35e1a3749ce6a0b65337c1ac5ccf07e7ecfbaa7828aa",
         x86_64_linux: "0946784ef886d716e82a8026f76933bf0a6e4f0a804a23722bb62047e8c07d4a"

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
