cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "63bf8dfd3e8186cd220bd388a2a67083dfdacfc9f09c3fe0458669d058bf11ac",
         intel: "a8633bcc972e4927d66cc91f86a8f7b326b74051b1ae8f33c8cba44ed5554a48"

  url "https://github.com/kamgurgul/cpu-info/releases/download/jvm-#{version}/CPU-Info-macos-#{arch}-#{version}.dmg"
  name "CPU Info"
  desc "Provides information about device hardware and software"
  homepage "https://github.com/kamgurgul/cpu-info"

  livecheck do
    url :url
    regex(/^jvm[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :monterey"

  app "CPU-Info.app"

  zap trash: "~/Library/Preferences/CPU-Info"
end
