cask "ijhttp" do
  version "263.7307.353"
  sha256 "7194c0409cd1b748eaabaaa46f11dcef0f366d03fb9175fe8556a86a91fd22a4"

  url "https://download.jetbrains.com/resources/intellij/http-client/#{version}/intellij-http-client.zip"
  name "IntelliJ HTTP Client CLI"
  desc "HTTP client from JetBrains IDEs available as a standalone CLI tool"
  homepage "https://www.jetbrains.com/ijhttp/download"

  livecheck do
    url "https://jb.gg/ijhttp/latest"
    strategy :header_match
  end

  binary "ijhttp/ijhttp"

  zap :not_required

  caveats do
    depends_on_java "17+"
  end
end
