cask "chipmunk" do
  arch arm: "-arm64"

  version "3.18.5"
  sha256 arm:   "c7397b5b0b94bc4c5d91aa20df70f0506e76fd7065e401801843dfd0c63532ac",
         intel: "3895834c9bd85e13842f21eedaace6c3b83390fb089703ede20c25a382d45bc8"

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
