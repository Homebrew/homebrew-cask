cask "chatz" do
  version "1.1.2"
  sha256 :no_check # No need to check if you are hosting releases across multiple architectures

  name "Chatz"
  desc "Versatile messaging app designed to send notifications to Google Chat, Slack, Discord, Telegram, and Redis."
  homepage "https://github.com/tech-thinker/chatz"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tech-thinker/chatz/releases/download/v1.1.2/chatz-darwin-arm64.tar.gz"
      sha256 "e2ee4ccc808f13bc21fea8e8c71980d30a9066c629cbb86d73fa93b67cf96d1b"
    else
      url "https://github.com/tech-thinker/chatz/releases/download/v1.1.2/chatz-darwin-amd64.tar.gz"
      sha256 "d3fdd464352b31207602e13dcd5c4c0aa6a2707b5dff5bbc9844ee7370ca2ff9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_32_bit?
        url "https://github.com/tech-thinker/chatz/releases/download/v1.1.2/chatz-linux-arm.tar.gz"
        sha256 "1223cc0c34f488250f0cbea7d0fc261233e5cbe7d3f44c7dcafb9b18dd5aab8b"
      else
        url "https://github.com/tech-thinker/chatz/releases/download/v1.1.2/chatz-linux-arm64.tar.gz"
        sha256 "b5a945b6cb67664e9f484972b8860a52d4f003c96fdb1a42da651ab45fe2fdae"
      end
    else
      url "https://github.com/tech-thinker/chatz/releases/download/v1.1.2/chatz-linux-amd64.tar.gz"
      sha256 "1b9ffd769454c187d0e25dac4ac04524382231266209a6293c4f34d977196284"
    end
  end

  binary "chatz" # This will install the binary into `/usr/local/bin`

  # If you need to install a manpage, it can be done like this:
  postflight do
    system_command "/bin/mkdir", args: ["-p", "/usr/local/share/man/man1"]
    system_command "/bin/cp", args: ["-f", "#{staged_path}/man/chatz.1", "/usr/local/share/man/man1/"]
  end

  uninstall delete: [
    "/usr/local/bin/chatz",
    "/usr/local/share/man/man1/chatz.1"
  ]

  caveats <<~EOS
    Make sure to have the correct system dependencies to run Chatz.
  EOS
end

