cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.18-9a7762b"
  sha256 arm:   "4e67b9ac80cc4a56e0a91b3b437894e0ba489ef7ec37f120d8084d2bfd02095d",
         intel: "f4298af7114a57ce317ddc13a49c273e1113b027e3e6b7a0769b8ef3565e6897"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  depends_on :macos

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
