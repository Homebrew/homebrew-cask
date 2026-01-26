cask "ijhttp" do
  version "253.28294.334"
  sha256 "65cce0e911f93dfe88c9933b37264f8a883081782a38fe3177691769d2ad4145"

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
