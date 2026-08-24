cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.8.1"

  on_macos do
    sha256 arm:   "587b87df17005efdf6e94ed28a4903baa5df8d2a2cbfe6bf28579507905208c8",
           intel: "736c534f75a3a46e659be0472674a7dd5ea8237dfadf1eb483ff94560ed8f280"
  end
  on_linux do
    sha256 "bd1d5ebbfcacacf581deb359475d7087cd9c3f9071ed9d2ba2c72b10cc629705"

    depends_on arch: :x86_64
  end

  url "https://downloads.mend.io/cli/#{os}_#{arch}/mend"
  name "mend"
  desc "Application security scanning CLI"
  homepage "https://www.mend.io/"

  livecheck do
    url "https://downloads.mend.io/matrix.json"
    strategy :json do |json|
      json["latest"]
    end
  end

  binary "mend"

  zap trash: "~/.mend"
end
