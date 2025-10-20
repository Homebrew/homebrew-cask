cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.17-e060db4"
  sha256 arm:   "f4ea5f1f7cc6937523c914576a295ea12581c578bbe7fb8431070f59cff1491a",
         intel: "1cdc45e0071054152d4e7812c1a1eb27ea9ce0a7641db7a6518453d1fea74db4"

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
