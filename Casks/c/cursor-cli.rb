cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.15-dbc8d73"
  sha256 arm:   "230ab1f3be57b0085bf071b02c2b2678b7123e8bd85d6f5118b69e3f355cbc6c",
         intel: "24dddb99177adf6e445aaac338999cec7d73e5c687d4cb5621d700f42183129f"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/})
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
