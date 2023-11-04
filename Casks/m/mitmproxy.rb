cask "mitmproxy" do
  version "10.1.3"
  sha256 "072766f57eed32be6cb6d24ca4a0509179d06d521ccceb71d47dc58d5de4f74a"

  url "https://downloads.mitmproxy.org/#{version}/mitmproxy-#{version}-macos-x86_64.tar.gz"
  name "mitmproxy"
  desc "Intercept, modify, replay, save HTTP/S traffic"
  homepage "https://mitmproxy.org/"

  livecheck do
    url "https://github.com/mitmproxy/mitmproxy"
    strategy :git
    regex(/^(\d+(?:\.\d+)+)$/i)
  end

  binary "mitmproxy.app/Contents/MacOS/mitmproxy"
  binary "mitmproxy.app/Contents/MacOS/mitmdump"
  binary "mitmproxy.app/Contents/MacOS/mitmweb"

  zap trash: "~/.mitmproxy"

  caveats do
    requires_rosetta
  end
end
