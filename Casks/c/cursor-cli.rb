cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.11.25-e276529"
  sha256 arm:   "82feb626eed70d033d413b10da8ec321475d4cf4d5a4e2f167be1ea7cb9314ba",
         intel: "020d05394a3c40fee1f111cab549ced10eeb161adf139b94ae1e565501623f51"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/}i)
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
