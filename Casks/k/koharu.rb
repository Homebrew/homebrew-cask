cask "koharu" do
  version "0.81.5"
  sha256 "e5d903417963e5bac103f6640f2b9d0adaddf3dcbf71d64ee46489e2169981c3"

  url "https://github.com/mayocream/koharu/releases/download/#{version}/koharu_#{version}_aarch64.dmg"
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
