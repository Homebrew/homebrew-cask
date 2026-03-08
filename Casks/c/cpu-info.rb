cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "c661d62e8fad138261aaf0a3e7663f38933abbe86cca9475d5f813f31e1addc5",
         intel: "5bbf1a83a7a41590f821beea24be91d90ad3b3234c331a3cdd6ab6cae4d81a6b"

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
