cask "ijhttp" do
  version "252.23892.409"
  sha256 "c841031bd3516188fc2bbfb7d850776c9faa3eb5542f4fcc31f3e8065a25e35f"

  url "https://download.jetbrains.com/resources/intellij/http-client/#{version}/intellij-http-client.zip"
  name "IntelliJ HTTP Client CLI"
  desc "HTTP client from JetBrains IDEs available as a standalone CLI tool"
  homepage "https://www.jetbrains.com/ijhttp/download"

  livecheck do
    url "https://jb.gg/ijhttp/latest"
    strategy :header_match
  end

  binary "ijhttp/ijhttp"

  # No zap stanza required

  caveats do
    depends_on_java "17+"
  end
end
