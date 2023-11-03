cask "mitmproxy" do
  version "10.1.2"
  sha256 "57f1d07809b712e9014305c2efad31fcb3de7e3dabd321cdfa8f79e971f8ae02"

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
