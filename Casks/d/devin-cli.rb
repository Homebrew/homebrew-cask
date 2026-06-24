cask "devin-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux"

  version "2026.8.18"

  url "https://static.devin.ai/cli/#{version}/devin-#{version}-#{arch}-#{os}.tar.gz"
  name "Devin CLI"
  desc "Coding agent with Devin Cloud integration"
  homepage "https://cli.devin.ai/docs"

  on_macos do
    sha256 arm:   "9f41ad4d49c0f4e630e15980424180e2b70e1a4f627f0633fa8bb2244919a40a",
           intel: "299ec57998ce211fbfbd6ed3b7704e05052c4a15ce8256916f1c46491e91d818"
  end

  on_linux do
    sha256 "dd4bba20593086bf708474792c11ab0c9428be5b2419ff5c182ec5f1099a0661"

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
