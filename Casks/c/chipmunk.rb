cask "chipmunk" do
  arch arm: "-arm64"

  version "3.16.3"
  sha256 arm:   "df6da7903045d46e5217bb032d93f1faa4e47305d1934ee8ef5a481721a2ea4a",
         intel: "973568210a7f5526c50bc93db91c62566b0cfe08729187a3c57734f7acedf22a"

  url "https://github.com/esrlabs/chipmunk/releases/download/#{version}/chipmunk@#{version}-darwin#{arch}-portable.tgz"
  name "Chipmunk Log Analyzer & Viewer"
  desc "Log analysis tool"
  homepage "https://github.com/esrlabs/chipmunk/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "chipmunk.app"

  zap trash: "~/.chipmunk"
end
