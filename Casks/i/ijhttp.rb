cask "ijhttp" do
  version "251.26927.53"
  sha256 "83c90c31836f8c98c8799aa582d08ed338357574b7ef0515af70eb8b15930cd1"

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
