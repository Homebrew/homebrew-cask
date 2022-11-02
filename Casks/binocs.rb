cask "binocs" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.3"
  sha256 arm:   "b9847ab788db65227d60bda2b7e08786519b7ed5d3fd952ed1e5e0b62b7edc04",
         intel: "ae61a9793f852eef713f4084b2f246941ec03ba5c4ae8809992d45816bd1e3c0"

  url "https://download.binocs.sh/binocs_#{version}_darwin_#{arch}.gz"
  name "Binocs"
  desc "CLI-first uptime and performance monitoring tool for websites, apps and APIs"
  homepage "https://binocs.sh/"

  livecheck do
    url "https://download.binocs.sh/VERSION"
    regex(/v(\d+(?:\.\d+)+)/)
  end

  binary "binocs"

  zap trash: "~/.binocs"
end
