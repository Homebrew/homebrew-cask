cask "fasmg" do
  version "ktge"
  sha256 "a60a5484f01b6cc86c046addd0cedc6f8d19a5df2f3e66c55fdf9ecad6ff9423"

  url "https://flatassembler.net/fasmg.#{version}.zip"
  name "fasmg"
  desc "New assembly engine designed as a successor of the one used by flat assembler 1"
  homepage "https://flatassembler.net/"

  livecheck do
    url "https://flatassembler.net/download.php"
    regex(/href=["']?fasmg\.([a-z0-9]{4})\.zip/i)
    strategy :page_match
  end

  binary "source/macos/x64/fasmg", target: "fasmg"
  artifact "docs", target: "#{HOMEBREW_PREFIX}/share/fasmg/docs"
  artifact "examples", target: "#{HOMEBREW_PREFIX}/share/fasmg/examples"

  caveats do
    requires_rosetta
  end

  # No zap stanza required
end
