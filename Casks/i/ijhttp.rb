cask "ijhttp" do
  version "261.25134.95"
  sha256 "4656e9c1e2c798fbe7fd78ed8fc124bc071ebb46e02770e198a562689da32c9d"

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
