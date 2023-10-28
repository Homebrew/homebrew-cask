cask "crunchy-cli" do
  version "3.0.3"
  sha256 "0a7a1a7fc17472f39576b4cf7d37e1e69fe0af5fa22b487f2c8992e320e7a058"

  url "https://github.com/crunchy-labs/crunchy-cli/releases/download/v#{version}/crunchy-cli-v#{version}-darwin-x86_64"
  name "crunchy-cli"
  desc "Command-line downloader for Crunchyroll"
  homepage "https://github.com/crunchy-labs/crunchy-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "ffmpeg"
  container type: :naked

  binary "crunchy-cli-v#{version}-darwin-x86_64", target: "crunchy-cli"

  postflight do
    set_permissions "#{staged_path}/crunchy-cli", "0755"
  end

  # No zap stanza required
end
