cask "koharu" do
  version "0.70.2"
  sha256 "8cde1d807bf88623edc691bb46449fdeaaa66825ea85f561e78d86b74bdd9e6d"

  url "https://github.com/mayocream/koharu/releases/download/#{version}/koharu_#{version}_aarch64.dmg",
      verified: "github.com/mayocream/koharu/"
  name "Koharu"
  desc "ML-powered manga translator"
  homepage "https://koharu.rs/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "koharu.app"

  uninstall quit: "Koharu"

  zap trash: [
    "~/Library/Application Support/Koharu",
    "~/Library/Caches/Koharu",
    "~/Library/WebKit/Koharu",
  ]
end
