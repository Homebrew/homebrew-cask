cask "ijhttp" do
  version "243.24978.46"
  sha256 "2fdbbf634a43fce0f6236597ea6815e6b88ff32ec893eeb355c33f59926ceeb1"

  url "https://download.jetbrains.com/resources/intellij/http-client/#{version.major_minor_patch}/intellij-http-client.zip"
  name "IntelliJ HTTP Client CLI"
  desc "HTTP client from JetBrains IDEs available as a standalone CLI tool"
  homepage "https://www.jetbrains.com/ijhttp/download"

  livecheck do
    url "https://jb.gg/ijhttp/latest"
    strategy :header_match
  end

  no_autobump! because: :requires_manual_review

  binary "ijhttp/ijhttp"

  # No zap stanza required

  caveats do
    depends_on_java "17+"
  end
end
