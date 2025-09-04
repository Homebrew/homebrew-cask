cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.09.03-e077a54"
  sha256 arm:   "9f11902aadf8df7c80f1a007cf5881b69579b39dba2aacc141069841ab4eb6a2",
         intel: "2e59a9172a74bf6f27396755b3b0f03237f994977f1ca49e32c6c1bb0542b8dc"

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
