cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.11.17-f532c45"
  sha256 arm:          "2e4a679c498d98eb2706ad7d90ccd256e5eb2f6cb3fe2cb4a9dd7f2dbd3efce0",
         intel:        "291995e57b14290abf0d7a154055a1460a24b89770754812ad70b4f723bd8fa6",
         arm64_linux:  "dff929e5e5ace2ced880290095df5938545267d73fd1d84be669be75dbdc1558",
         x86_64_linux: "189ed41d8963cd22dcdafbbd62f072cc55ac08374c922dbd04aee525f4018ab6"

  url "https://downloads.cursor.com/lab/#{version}/#{os}/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
